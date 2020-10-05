# Add user bin to PATH.
typeset -TUx PATH path
path=("${HOME}/bin" $path)

# Start X automatically on login.
if [[ ! "${DISPLAY}" && "${XDG_VTNR}" -eq 1 ]]; then

  # Override Xauthority file path.
  export XAUTHORITY="${XDG_DATA_HOME:-~/.local/share}/xorg/authority"

  exec startx
fi
