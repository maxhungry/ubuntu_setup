#!/bin/bash

sudo apt-get update
sudo apt-get install -y build-essential libssl-dev
sudo apt-get install -y software-properties-common

############
# Settings #
############

gsettings set org.gnome.desktop.peripherals.keyboard delay 150
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 25

##################
# Base Dev Tools #
##################
sudo apt-get install -y git curl xclip fasd tmux boxes
sudo apt-get install -y fonts-firacode

# rcm
sudo add-apt-repository -y ppa:martin-frost/thoughtbot-rcm
sudo apt-get update
sudo apt-get -y install rcm

# neovim
sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install -y neovim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# zsh
sudo apt-get install -y zsh

# python
sudo apt-get install -y python-dev python-pip python3-dev python3-pip

# rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

# git clone git@github.com:maxhungry/dotfiles.git ~/.dotfiles

##########
# Others #
##########

