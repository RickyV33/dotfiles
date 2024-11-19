#!/bin/bash

if [ -z "$NAME" ] || [ -z "$EMAIL" ]; then
    echo "Error: Both NAME and EMAIL environment variables are required."
    exit 1
fi

cp ./.gitconfig ~
# replace the following placeholders with the corresponding env var NAME and EMAIL:
sed -i "s/<NAME>/$NAME/g" ~/.gitconfig
sed -i "s/<EMAIL>/$EMAIL/g" ~/.gitconfig
