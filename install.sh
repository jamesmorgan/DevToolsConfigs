#!/bin/bash

cp .gitconfig .bashrc .gitignore_global .inputrc $HOME/.
echo "Copying config files done"

cp vimrc.local /etc/vim/vimrc.local
echo "Copying VIMRC local files"

source $HOME/.bashrc
