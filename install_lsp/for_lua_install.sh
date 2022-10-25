#!/usr/bin/env bash
set -o errexit
set -o nounset

echo "Install Lua-Language-Server"
#LUA
sudo apt -y install gcc g++ clang ninja-build

mkdir -p ${HOME}/.config/lsp
cd ${HOME}/.config/lsp

git clone https://github.com/sumneko/lua-language-server.git
cd lua-language-server
git submodule update --init --recursive

cd 3rd/luamake
./compile/install.sh
cd ${HOME}/.config/lsp/lua-language-server/ 
./3rd/luamake/luamake rebuild

echo 'export PATH="${HOME}/.config/lsp/lua-language-server/bin:${PATH}"' >> ~/.bashrc

