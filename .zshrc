export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:/opt/bin"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

export EDITOR='vim'
export VISUAL='vim'
export BROWSER='firefox' # Needed for mutt

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# History configurations
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=2000
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
unsetopt autocd

alias history="history 0"

bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/rene/.zshrc'



autoload -Uz compinit vcs_info
compinit -d ~/.cache/zcompdump
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' # case insensitive tab completion


# This will set the default prompt to the walters theme
# prompt olive
#PROMPT='%F{177}%m%f:%F{192}%~%f%(!.#.$) '
PROMPT='%F{177}%m%f:%F{192}%(5~|%-1~/…/%3~|%4~)%f%(!.#.$) '
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
#RPROMPT='%F{192}%D %T ${vcs_info_msg_0_}'
zstyle ':vcs_info:git:*' formats '%F{192}[%b]%F{177}%r%f'
zstyle ':vcs_info:*' enable git

# enable auto-suggestions based on the history
if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    . /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    # change suggestion color
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#999'
fi

alias yeet='terraform apply'

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

source /usr/share/doc/fzf/examples/key-bindings.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
