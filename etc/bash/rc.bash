#!/usr/bin/env bash

export EDITOR=kak
export VISUAL=kak

# Stop if it's not interactive.
if [[ $- != *i* ]]; then
  return
fi

# Update COLUMNS and LINES after each command.
shopt -s checkwinsize
# Append to, not overwrite, the history file.
shopt -s histappend
# Make ** match all files and 0 or more directories.
shopt -s globstar

# History options.
HISTCONTROL=ignorespace
HISTFILE="${XDG_DATA_HOME:-${HOME}/.local/share}/bash-history"
HISTFILESIZE=2000
HISTSIZE=1000
HISTTIMEFORMAT='%F %T '

# Emulate Zsh when the last command's output doesn't end with new line.
# Prints percent sign in reverse mode and a newline before prompt.
PS1='\[\e[7m%\e[m$(printf "%*s" "$((COLUMNS-1))" " ")\r\e[K\]\$ '

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
