#!/bin/sh

# get colors from pallette
colorbg=$(sed -n "1p" pallette.txt)
colorfg=$(sed -n "2p" pallette.txt)

# ghostty
ghostty="$HOME/.config/ghostty"
rm $ghostty/config
sed $ghostty/config.template -e "s/colorbg/${colorbg}/" -e "s/colorfg/${colorfg}/" >> $ghostty/config

