#!/bin/bash

############
# Settings #
############

gsettings set org.gnome.desktop.peripherals.keyboard delay 150
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 45

##################
# Base Dev Tools #
##################
sudo dnf install -y xclip fasd tmux boxes @development-tools
sudo dnf copr enable evana/fira-code-fonts
sudo dnf install -y fira-code-fonts

# rcm
sudo dnf copr enable seeitcoming/rcm
sudo dnf install -y rcm

# neovim
sudo dnf install py neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# zsh
sudo dnf install -y zsh

# python
# sudo apt-get install -y python-dev python-pip python3-dev python3-pip

# rbenv
sudo dnf install -y gcc-c++ bzip2 openssl-devel libyaml-devel libffi-devel readline-devel zlib-devel gdbm-devel ncurses-devel
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

# docker
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-compose

# snap
sudo dnf install -y snapd
sudo ln -s /var/lib/snapd/snap /snap

# git clone git@github.com:maxhungry/dotfiles.git ~/.dotfiles

##########
# Others #
##########

