#!/bin/bash

# The whole works for dev containers
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
"$DIR/zsh.sh"
"$DIR/zshrc_alias.sh"

source ~/.zshrc