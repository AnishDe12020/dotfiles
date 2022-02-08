#!/bin/sh
sudo apt update && sudo apt upgrade -y
flatpak update
brew upgrade

./.config/nvim/lsp.sh

