
if [[ "$OSTYPE" == "darwin"* ]]; then
  echo '*** Installing for Mac ***'

  echo '--- Installing xcode command line tools ---'
  xcode-select --install

  echo '--- Installing homebrew ---'
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

git clone git@github.com:hcochran21/dotfiles.git ~/Documents/github/.dotfiles && (cd ~/Documents/github/.dotfiles && ./bootstrap.sh)