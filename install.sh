#!/bin/bash
echo "Installing Austin's dotfiles"


DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cp -v $DIR/.* ~
