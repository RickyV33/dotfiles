#!/bin/bash

########################################################################################################################

cp ./.gitconfig ~
# replace the following placeholders with the corresponding env var NAME and EMAIL:
sed -i "s/<NAME>/$NAME/g" ~/.gitconfig
sed -i "s/<EMAIL>/$EMAIL/g" ~/.gitconfig

########################################################################################################################

# Install powerline fonts for zsh agnoster theme
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

########################################################################################################################

# oh-my-zsh & plugins
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
zsh -c 'git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions'
zsh -c 'git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting'
cp ./.zshrc ~

########################################################################################################################
#### set agnoster as theme, this came from https://gist.github.com/corentinbettiol/21a6d4e942a0ee58d51acb7996697a88
#### in vscode settings for devcontainer (not for User or Workspace), Search for terminal.integrated.fontFamily value, and set it to "Roboto Mono for Powerline" (or any of those: https://github.com/powerline/fonts#font-families font families).

sed -i '/^ZSH_THEME/c\ZSH_THEME="agnoster"' ~/.zshrc


# only do the following if envar $BREW is set to true
if [ "$BREW" != "true" ]; then
    exit 0
fi

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.zshrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
sudo apt-get install build-essential
brew install gcc

# install brew packages
brew install scc tldr thefuck duf eza bat 

