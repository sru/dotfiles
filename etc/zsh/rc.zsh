
# Options

## History
HISTFILE="${XDG_DATA_HOME:-${HOME}/.local/share}/zsh-history"
HISTSIZE=10000
SAVEHIST=10000

setopt HIST_IGNORE_SPACE

## Completion
setopt ALWAYS_TO_END
# setopt COMPLETE_IN_WORD
unsetopt LIST_AMBIGUOUS

# Completion

autoload -Uz compinit
compinit -d "${XDG_CACHE_HOME:-${HOME}/.cache}/zsh-compdump"

zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' '+r:|[._-]=* r:|=*' '+l:|=* r:|=*'
zstyle ':completion:*' match-original both
zstyle ':completion:*' max-errors 1
zstyle ':completion:*' menu select

# Prompt
PROMPT='%# '

# Aliases
alias e=kak
alias g=git
