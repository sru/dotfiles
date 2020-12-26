export XDG_CACHE_HOME="${HOME}/cache"
export XDG_CONFIG_HOME="${HOME}/config"
export XDG_DATA_HOME="${HOME}/data"

export EDITOR=kak
export VISUAL=kak

# Use GPG agent for SSH authentication.
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi

export LESSHISTFILE="${XDG_DATA_HOME}/less/history"

# Disable accessibility.
export NO_AT_BRIDGE=1
