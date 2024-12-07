#!/bin/bash

# install brew
# if [ "$WITH_BREW" = true ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.zshrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    sudo apt-get install build-essential
# fi

brew install gcc

# install brew packages
brew install scc tldr thefuck duf eza bat
echo 'eval $(thefuck --alias)' >> ~/.zshrc
