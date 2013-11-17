#!/bin/bash

cp .gitconfig .bashrc .gitignore_global .inputrc ~/.
echo "Copying config files done"

cp vimrc.local /etc/vim/vimrc.locali
echo "Copying VIMRC local files"
