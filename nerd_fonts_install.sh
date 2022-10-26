#!/usr/bin/env bash
set -o errexit
set -o nounset

mkdir -p ${HOME}/.fonts/
cd ${HOME}/.fonts/
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/DejaVuSansMono.zip
unzip -x DejaVuSansMono.zip

#update cache
fc-cache -fv
