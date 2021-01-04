# History
export HISTFILE="${XDG_DATA_HOME}/zsh-history"
export HISTSIZE=1000
export SAVEHIST=1000

# Options

## Completion
setopt ALWAYS_TO_END
# setopt COMPLETE_IN_WORD
unsetopt LIST_AMBIGUOUS

# Completion

autoload -Uz compinit
compinit -d "${XDG_CACHE_HOME}/zsh-compdump"

zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' '+r:|[._-]=* r:|=*' '+l:|=* r:|=*'
zstyle ':completion:*' match-original both
zstyle ':completion:*' max-errors 1
zstyle ':completion:*' menu select

# Aliases
alias e="${EDITOR}"
alias g='git'
alias t='task'
