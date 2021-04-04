# Create XDG_RUNTIME_DIR the variable and the directory if it doesn't exist.
if [[ ! -v XDG_RUNTIME_DIR ]]; then
  XDG_RUNTIME_DIR="/tmp/$(id -u -n)-runtime"
  if [[ ! -d "${XDG_RUNTIME_DIR}" ]]; then
    mkdir -m 0700 "${XDG_RUNTIME_DIR}"
  elif [[ ! -O "${XDG_RUNTIME_DIR}" || ! "$(stat -c '%a' "${XDG_RUNTIME_DIR}")" = 700 ]]; then
    echo "XDG_RUNTIME_DIR: '${XDG_RUNTIME_DIR}' has wrong permissions:" >&2
    ls -ld "${XDG_RUNTIME_DIR}" >&2
    XDG_RUNTIME_DIR="$(mktemp -d "/tmp/$(id -u -n)-runtime-XXXXXX")"
    chmod 0700 "${XDG_RUNTIME_DIR}"
  fi
fi
export XDG_RUNTIME_DIR

# Start SSH agent if it's not already running.
if ! pgrep -u "$(id -u)" ssh-agent >/dev/null; then
  ssh-agent -t 7200 -a "${XDG_RUNTIME_DIR}/ssh-agent.socket" >"${XDG_RUNTIME_DIR}/ssh-agent.env"
fi
if [[ ! -v SSH_AUTH_SOCK ]]; then
  source "${XDG_RUNTIME_DIR}/ssh-agent.env" >/dev/null
fi

if [[ "$(tty)" = "/dev/tty1" ]]; then
  sx
fi
