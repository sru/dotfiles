# Functions
autoload -Uz compinit zmv

# Options

## History
HISTFILE="${XDG_STATE_HOME:-${HOME}/.local/state}/zsh/history"
HISTSIZE=10000
SAVEHIST=10000

setopt HIST_IGNORE_SPACE

## Completion
setopt ALWAYS_TO_END
# setopt COMPLETE_IN_WORD
unsetopt LIST_AMBIGUOUS

# Completion

compinit -d "${XDG_CACHE_HOME:-${HOME}/.cache}/zsh/compdump"

zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' '+r:|[._-]=* r:|=*' '+l:|=* r:|=*'
zstyle ':completion:*' match-original both
zstyle ':completion:*' max-errors 1
zstyle ':completion:*' menu no-select

# Prompt
PROMPT='%# '

# Aliases
alias e='${EDITOR}'
alias g=git

# Key bindings
bindkey -e
