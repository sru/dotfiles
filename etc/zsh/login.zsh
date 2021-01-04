# Start SSH agent if it's not already running.
if ! pgrep -u "${USER}" ssh-agent > /dev/null; then
  ssh-agent -t 7200 -a "${XDG_RUNTIME_DIR}/ssh-agent.socket" > "${XDG_RUNTIME_DIR}/ssh-agent.env"
fi
if [[ ! "${SSH_AUTH_SOCK}" ]]; then
  source "${XDG_RUNTIME_DIR}/ssh-agent.env" > /dev/null
fi

# Start X on login.
if [[ ! "${DISPLAY}" && "${XDG_VTNR}" -eq 1 ]]; then
  exec sx
fi
