#!/bin/bash

LINUX="LINUX"
OSX="OSX"
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
    if [ "$INSTALL_TYPE" != $OSX ] || [ "$INSTALL_TYPE" != $LINUX ]
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

    cp vimrc.local /etc/vim/vimrc.local
    echo "Copying VIMRC local files"

    # Switch installer
    case "$INSTALL_TYPE" in
    $OSX) echo "Found OSX switch"
        cp mac-osx/.bash_profile $HOME/.
        source $HOME/.bash_profile
        ;;
    $LINUX) echo  "Found LINUX switch"
        cp .bashrc $HOME/.
        source $HOME/.bashrc
        ;;
    esac
}

# Validate arguments
valid $1;

# Install scripts
install;
