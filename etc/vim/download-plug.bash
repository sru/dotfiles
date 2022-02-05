#!/usr/bin/env bash

if !command -v curl &> /dev/null; then
  echo 'Please make sure curl is in path.'
  exit 1
fi

script_path="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"
mkdir -p "${script_path}/autoload"
curl -fLo "${script_path}/autoload/plug.vim" \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
