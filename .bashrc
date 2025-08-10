if [[ "$TERM_PROGRAM" == "vscode" ]]; then
  # prompt minimal pour Copilot Agent / intégration de shell
  PS1='\[\e]133;D;\a\]\[\e[32m\]\u@\h\[\e[0m\]:\[\e[34m\]\w\[\e[0m\]\[\e]133;B;\a\]\$ '
  # tu peux ajouter ici tes séquences OSC 133 si tu veux
else
    case $- in
      *i*) ;;
        *) return;;
    esac

    # Path to your oh-my-bash installation.
    export OSH='/home/seb/.oh-my-bash'

    # Set name of the theme to load. Optionally, if you set this to "random"
    # it'll load a random theme each time that oh-my-bash is loaded.
    OSH_THEME="font"

    # Uncomment the following line to use case-sensitive completion.
    # OMB_CASE_SENSITIVE="true"

    # Uncomment the following line to use hyphen-insensitive completion. Case
    # sensitive completion must be off. _ and - will be interchangeable.
    # OMB_HYPHEN_SENSITIVE="false"

    # Uncomment the following line to disable bi-weekly auto-update checks.
    # DISABLE_AUTO_UPDATE="true"

    # Uncomment the following line to change how often to auto-update (in days).
    # export UPDATE_OSH_DAYS=13

    # Uncomment the following line to disable colors in ls.
    # DISABLE_LS_COLORS="true"

    # Uncomment the following line to disable auto-setting terminal title.
    # DISABLE_AUTO_TITLE="true"

    # Uncomment the following line to enable command auto-correction.
    # ENABLE_CORRECTION="true"

    # Uncomment the following line to display red dots whilst waiting for completion.
    # COMPLETION_WAITING_DOTS="true"

    # Uncomment the following line if you want to disable marking untracked files
    # under VCS as dirty. This makes repository status check for large repositories
    # much, much faster.
    # DISABLE_UNTRACKED_FILES_DIRTY="true"

    # Uncomment the following line if you don't want the repository to be considered dirty
    # if there are untracked files.
    # SCM_GIT_DISABLE_UNTRACKED_DIRTY="true"

    # Uncomment the following line if you want to completely ignore the presence
    # of untracked files in the repository.
    # SCM_GIT_IGNORE_UNTRACKED="true"

    # Uncomment the following line if you want to change the command execution time
    # stamp shown in the history command output.  One of the following values can
    # be used to specify the timestamp format.
    # * 'mm/dd/yyyy'     # mm/dd/yyyy + time
    # * 'dd.mm.yyyy'     # dd.mm.yyyy + time
    # * 'yyyy-mm-dd'     # yyyy-mm-dd + time
    # * '[mm/dd/yyyy]'   # [mm/dd/yyyy] + [time] with colors
    # * '[dd.mm.yyyy]'   # [dd.mm.yyyy] + [time] with colors
    # * '[yyyy-mm-dd]'   # [yyyy-mm-dd] + [time] with colors
    # If not set, the default value is 'yyyy-mm-dd'.
    # HIST_STAMPS='yyyy-mm-dd'

    # Uncomment the following line if you do not want OMB to overwrite the existing
    # aliases by the default OMB aliases defined in lib/*.sh
    # OMB_DEFAULT_ALIASES="check"

    # Would you like to use another custom folder than $OSH/custom?
    # OSH_CUSTOM=/path/to/new-custom-folder

    # To disable the uses of "sudo" by oh-my-bash, please set "false" to
    # this variable.  The default behavior for the empty value is "true".
    OMB_USE_SUDO=true

    # To enable/disable display of Python virtualenv and condaenv
    # OMB_PROMPT_SHOW_PYTHON_VENV=true  # enable
    # OMB_PROMPT_SHOW_PYTHON_VENV=false # disable

    # Which completions would you like to load? (completions can be found in ~/.oh-my-bash/completions/*)
    # Custom completions may be added to ~/.oh-my-bash/custom/completions/
    # Example format: completions=(ssh git bundler gem pip pip3)
    # Add wisely, as too many completions slow down shell startup.
    completions=(
      git
      composer
      ssh
    )

    # Which aliases would you like to load? (aliases can be found in ~/.oh-my-bash/aliases/*)
    # Custom aliases may be added to ~/.oh-my-bash/custom/aliases/
    # Example format: aliases=(vagrant composer git-avh)
    # Add wisely, as too many aliases slow down shell startup.
    aliases=(
      general
    )

    # Which plugins would you like to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
    # Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
    # Example format: plugins=(rails git textmate ruby lighthouse)
    # Add wisely, as too many plugins slow down shell startup.
    plugins=(
      git
      bashmarks
    )

    # Which plugins would you like to conditionally load? (plugins can be found in ~/.oh-my-bash/plugins/*)
    # Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
    # Example format:
    #  if [ "$DISPLAY" ] || [ "$SSH" ]; then
    #      plugins+=(tmux-autoattach)
    #  fi

    source "$OSH"/oh-my-bash.sh

    # User configuration
    # export MANPATH="/usr/local/man:$MANPATH"

    # You may need to manually set your language environment
    # export LANG=en_US.UTF-8

    # Preferred editor for local and remote sessions
    # if [[ -n $SSH_CONNECTION ]]; then
    #   export EDITOR='vim'
    # else
    #   export EDITOR='mvim'
    # fi

    # Compilation flags
    # export ARCHFLAGS="-arch x86_64"

    # ssh
    # export SSH_KEY_PATH="~/.ssh/rsa_id"

    # Set personal aliases, overriding those provided by oh-my-bash libs,
    # plugins, and themes. Aliases can be placed here, though oh-my-bash
    # users are encouraged to define aliases within the OSH_CUSTOM folder.
    # For a full list of active aliases, run `alias`.
    #
    # Example aliases
    # alias bashconfig="mate ~/.bashrc"
    # alias ohmybash="mate ~/.oh-my-bash"
    set +o noclobber


    [[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
        . /usr/share/bash-completion/bash_completion

    export PYENV_ROOT="$HOME/.pyenv"
    [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"


    export VANTA_OWNER_EMAIL="sebastien.najjar@padam.io"
    export VANTA_KEY="6v5cy5ykc6t5udc8c4r86hg6kgjwxmnx88y3570awr2pgawqyjwg"
    export VANTA_REGION="eu"

    # Add flatpak packages
    export PATH="/var/lib/flatpak/exports/bin:$PATH"


    source ~/.padam_bash_aliases

    export PATH="/home/seb/.meteor":$PATH

    alias vpn="pritunl-client-electron"
    alias shokz-connect='bluetoothctl connect 4B:68:F4:41:BD:C3'
    alias mfa="~/.aws/get-aws-creds.sh"

    export TERM=xterm
    export OLLAMA_API_BASE=http://127.0.0.1:11434

    # 1 requête à la fois (meilleure latence) et modèles gardés en mémoire
    export OLLAMA_NUM_PARALLEL=1
    export OLLAMA_KEEP_ALIVE=24h
fi

export PS1


# Add node packages to path
export PATH="/home/seb/.n/bin:/home/seb/.npm/bin:$PATH"
export N_PREFIX="/home/seb/.n/"



if [ "$(tty)" = "/dev/tty1" ];then
  exec Hyprland
fi

# uv
export PATH="/home/seb/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"


dedup_path() {
  PATH=$(printf '%s' "$PATH" \
    | awk -v RS=':' '!seen[$1]++ {printf (NR==1 ? "%s" : ":%s"), $1}')
}
# l’appeler juste après tes exports PATH
dedup_path
