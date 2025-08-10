#!/usr/bin/env bash
# Usage: scale_step.sh +0.25  (ou)  scale_step.sh -0.25
# Dépendances : jq, bc

STEP="${1:-+0.25}"
MIN="${MIN_SCALE:-0.5}"
MAX="${MAX_SCALE:-3.0}"

# Moniteur actuellement focalisé
FOCUSED_JSON="$(hyprctl -j monitors | jq -r '.[] | select(.focused==true)')"
[ -z "$FOCUSED_JSON" ] && exit 1

NAME="$(echo "$FOCUSED_JSON" | jq -r '.name')"
SCALE="$(echo "$FOCUSED_JSON" | jq -r '.scale')"
X="$(echo "$FOCUSED_JSON" | jq -r '.x')"
Y="$(echo "$FOCUSED_JSON" | jq -r '.y')"
W="$(echo "$FOCUSED_JSON" | jq -r '.width')"
H="$(echo "$FOCUSED_JSON" | jq -r '.height')"
RR="$(echo "$FOCUSED_JSON" | jq -r '.refreshRate' | awk '{printf "%.0f",$0}')"

# Nouveau scale (pas de 0.25)
NEW="$(echo "$SCALE $STEP" | bc -l)"

# Clamp entre MIN et MAX
gt() { echo "$1>$2" | bc -l; }
lt() { echo "$1<$2" | bc -l; }
[ "$(gt "$NEW" "$MAX")" -eq 1 ] && NEW="$MAX"
[ "$(lt "$NEW" "$MIN")" -eq 1 ] && NEW="$MIN"

# Arrondi propre à 2 décimales (évite 1.249999)
NEW="$(LC_ALL=C printf '%.2f' "$NEW")"

# Applique : on garde taille/position courantes et on change juste le scale
hyprctl keyword monitor "$NAME,${W}x${H}@${RR},${X}x${Y},$NEW"

