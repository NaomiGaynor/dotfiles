#!/bin/bash

source ./utils/config.sh


if [ "$1" == "--remove" ] || [ "$1" == "-r" ]; then

    echo "Uninstalling nvm"
    rm -rf ~/.nvm/

    echo "omf uninstall nvm" | fish

    exit
fi

echo "Installing nvm"
mkdir -p ~/.nvm/
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash


echo "Installing nvm for Oh My Fish"
echo "omf uninstall nvm" | fish
echo "omf install nvm" | fish

echo "Installing node 8.10"
echo "nvm install 8.10" | fish