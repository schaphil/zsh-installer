#!/bin/sh

# zsh installer script
apt-get update && apt-get --assume-yes install wget zsh git && zsh --version
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
chsh -s $(which zsh)
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
wget https://raw.githubusercontent.com/schaphil/zsh-installer/master/zshrc.txt -O ~/.zshrc
