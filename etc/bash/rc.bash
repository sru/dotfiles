#!/usr/bin/env bash

# Stop if it's not interactive.
if [[ $- != *i* ]]; then
  return
fi

export EDITOR=kak
export VISUAL=kak

# Update COLUMNS and LINES after each command.
shopt -s checkwinsize
# Append to, not overwrite, the history file.
shopt -s histappend
# Make ** match all files and 0 or more directories.
shopt -s globstar

# History options.
HISTCONTROL=ignorespace
HISTFILE="${XDG_DATA_HOME:-${HOME}/.local/share}/bash-history"
HISTFILESIZE=10000
HISTSIZE=10000
HISTTIMEFORMAT='%F %T '

# Emulate Zsh when the last command's output doesn't end with new line.
# Prints percent sign in reverse mode and a newline before prompt.
prompt-command () {
  IFS=';' read -s -d R -p $'\e[6n' row col
  if [[ ${col} != 1 ]]; then
    echo -e '\e[07m%\e[0m'
  fi
}
PROMPT_COMMAND='prompt-command'
PS1='\$ '

alias g=git
alias e=kak

# Use Bash completion if it's installed.
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi

  # Setup Git completion for the alias.
  if declare -F __git_complete >/dev/null; then
    __git_complete g git
  fi
fi
