#!/usr/bin/env bash

echo ">>> Setting up Vim"

if [[ -z $1 ]]; then
    github_url="https://raw.githubusercontent.com/fideloper/Vaprobash/master"
else
    github_url="$1"
fi

# Create directories needed for some .vimrc settings
mkdir -p /home/$USER/.vim/backup
mkdir -p /home/$USER/.vim/swap

# Install Vundle and set owner of .vim files
git clone https://github.com/gmarik/vundle.git /home/$USER/.vim/bundle/vundle
sudo chown -R $USER:$USER /home/$USER/.vim

# Grab .vimrc and set owner
curl --silent -L $github_url/helpers/vimrc > /home/$USER/.vimrc
sudo chown $USER:$USER /home/$USER/.vimrc

# Install Vundle Bundles
sudo su - $USER -c 'vim +BundleInstall +qall'
