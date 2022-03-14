#!/usr/bin/env bash

echo '--- Updating brew ---'
brew update

echo '--- Installing brew packages ---'
brew install node

echo '--- Installing brew casks ---'

# caskable programs
brew install --cask google-chrome
brew install --cask iterm2
brew install --cask postman
brew install --cask docker
brew install --cask zoom
brew install --cask slack
brew install --cask visual-studio-code