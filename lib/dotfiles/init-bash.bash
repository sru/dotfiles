#!/usr/bin/env bash

dotfiles="$(realpath -- "$(dirname -- "${BASH_SOURCE[0]}")/../..")"
echo "The root directory of dotfiles repo is '${dotfiles}'."

if [[ ! -e "${HOME}/.bashrc" ]]; then
  echo "Setting up '~/.bashrc'."
  {
    echo "export PATH=\"${dotfiles}/bin:\${PATH}\""
    echo "export XDG_CACHE_HOME='${dotfiles}/var/cache'"
    echo "export XDG_CONFIG_HOME='${dotfiles}/etc'"
    echo "export XDG_DATA_HOME='${dotfiles}/var/lib'"
    echo "source \"\${XDG_CONFIG_HOME}/bash/rc.bash\""
  } >"${HOME}/.bashrc"
fi

if [[ ! -e "${HOME}/.bash_profile" ]]; then
  echo "Setting up '~/.bash_profile'."
  echo '[[ -r ~/.bashrc ]] && source ~/.bashrc' >"${HOME}/.bash_profile"
fi

mkdir -p "${dotfiles}/var/lib/bash"
