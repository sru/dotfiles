# Start X automatically on login.
if [[ ! "${DISPLAY}" && "${XDG_VTNR}" -eq 1 ]]; then
  exec sx
fi
