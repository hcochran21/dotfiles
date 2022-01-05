#!/usr/bin/env bash

if [[ "$OSTYPE" == "darwin"* ]]; then
  ./mac_bootstrap.sh
fi

echo '--- Removing .zshrc file from home directory ---'
rm ~/.zshrc

echo '--- Creating local-only files ---'
# create env and rc files that contain local only settings
touch ~/.zshenv_local
touch ~/.zshrc_local

echo '--- Creating src directory in home directory ---'
mkdir ~/src

echo '--- Creating ~/.starting_directory file ---'
# create the starting directory file with ~/src (the actual explicit path) as the default
(cd ~/src && echo `pwd` > ~/.starting_directory)

echo '--- Running dotbot install ---'
./install_dotbot.sh

echo '--- Installing oh my zsh ---'
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"