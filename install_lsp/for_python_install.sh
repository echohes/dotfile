#!/usr/bin/env bash
set -o errexit
set -o nounset

sudo apt -y install npm
sudo npm install -g pyright
