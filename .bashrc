#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# keyboard fr
setxkbmap fr

# auto start xfce if no display
[[ -z $DISPLAY ]] && startxfce4

# define env
export PS1='\[\033[01;33m\]\u\[\033[01;37m\]@\[\033[01;36m\]\h\[\033[01;37m\]: \[\033[01;32m\]\w \[\033[01;37m\]\$ \[\033[00;37m\]'
export EDITOR="vim"

# alias utilities
alias refresh="source ~/.bashrc"
alias ll='ls --color=auto -al'
alias ls='ls --color=auto'

sgrep () {
/usr/bin/find $PWD -name ".hg" -o \( -name "*.html" -o -name "*.htm" -o -name "*.js" -o -name "*.less" \) -print0 | /usr/bin/xargs -0 /usr/bin/grep --color=always $1 | awk '{if (length() > 1024) getline ; else print}'
}

pgrep () {
/usr/bin/find $PWD -name ".hg" -o \( -name "*.py" \) -print0 | /usr/bin/xargs -0 /usr/bin/grep --color=always $1 | awk '{if (length() > 1024) getline ; else print}'
}


# alias for appengine
alias appcfg='/usr/bin/python2.5 /home/intox/dev/gae/google_appengine/appcfg.py'
alias appsrv='/usr/bin/python2.5 /home/intox/dev/gae/google_appengine/dev_appserver.py'
