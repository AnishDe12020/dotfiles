#!/bin/sh
sudo nala update && sudo nala upgrade -y
flatpak update
brew upgrade
npm update -g

