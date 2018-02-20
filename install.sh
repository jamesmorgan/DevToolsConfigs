#!/bin/bash

LINUX="LINUX"
OSX="OSX"
OSX_ZSH="OSX-ZSH"
INSTALL_TYPE=$1

function usage {
    echo "Error, USAGE: install.sh [either <$OSX, $LINUX>]"
    echo "Also make sure your home is set [$HOME]"
}

function valid {

    # Check Number of arguments valid
    if [ "$#" -ne 1 ]
    then
        echo "failed 1"
        usage
        exit 1
    fi

    echo "INSTALL_TYPE $INSTALL_TYPE"

    # Check if correct type
    if [[ "$INSTALL_TYPE" != "$OSX" && "$INSTALL_TYPE" != "$LINUX" && "$INSTALL_TYPE" != "$OSX_ZSH" ]]
    then
        echo "failed 2"
        usage
        exit 1
    fi

    echo "Found $INSTALL_TYPE, Home set as $HOME"
}

function install {

    cp .gitconfig .gitignore_global .inputrc $HOME/.
    echo "Copying config files done"

    # Switch installer
    case "$INSTALL_TYPE" in
    "$OSX")
        echo "Running $OSX install"
        cp mac-osx/.bash_profile $HOME/.
        source $HOME/.bash_profile
        ;;
    "$OSX_ZSH")
        echo "Running $OSX install"
        cp zsh/.zshrc $HOME/.
        source $HOME/.zshrc
        ;;
    "$LINUX")
        echo  "Running $LINUX install"

        cp vimrc.local /etc/vim/vimrc.local
        echo "Copying VIMRC local files"

        cp .bashrc $HOME/.
        source $HOME/.bashrc
        ;;
    esac
}

# Validate arguments
valid $1;

# Install scripts
install;
