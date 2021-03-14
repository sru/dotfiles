# Start SSH agent if it's not already running.
if ! pgrep -u "${USER}" ssh-agent >/dev/null; then
  ssh-agent -t 7200 -a "/tmp/ssh-agent-$(id -u).socket" >"/tmp/ssh-agent-$(id -u).env"
fi
if [[ ! -v SSH_AUTH_SOCK ]]; then
  source "/tmp/ssh-agent-$(id -u).env" >/dev/null
fi

# Start X on login.
if [[ ! "${DISPLAY}" ]]; then
  sx
fi
