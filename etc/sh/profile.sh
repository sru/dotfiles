# Set environment variables from environment.d files.
set -a
eval "$(/usr/lib/systemd/user-environment-generators/30-systemd-environment-d-generator)"
set +a

export EDITOR='/usr/bin/helix'
export VISUAL='/usr/bin/helix'
export PAGER='/usr/bin/less'

# SSH_AUTH_SOCK variable may be set if SSH Agent is forwarded.
# Don't overwrite it if it is already set.
if test -z "${SSH_AUTH_SOCK}"; then
  export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"
fi
