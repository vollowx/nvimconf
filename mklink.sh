#!/usr/bin/env sh

current="$(pwd)"
target=~/.config/nvim

echo "Removing $target"
rm -rf $target
echo "Linking $current to $target"
ln -s $current $target
