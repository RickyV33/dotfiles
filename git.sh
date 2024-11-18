#!/bin/bash

cp ./.gitconfig ~
# replace the following placeholders with the corresponding env var NAME and EMAIL:
sed -i "s/<NAME>/$NAME/g" ~/.gitconfig
sed -i "s/<EMAIL>/$EMAIL/g" ~/.gitconfig
