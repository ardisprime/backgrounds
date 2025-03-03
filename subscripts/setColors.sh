#!/bin/sh

backgrounds="$HOME/backgrounds"

# get colors from pallette
colorbg=$(sed -n "1p" $backgrounds/pallette.txt)
colorfg=$(sed -n "2p" $backgrounds/pallette.txt)
 
# fzf
fish="$HOME/.config/fish/conf.d"
rm $fish/fzf.fish
sed $fish/fzf.template -e "s/colorbg/${colorbg}/g" -e "s/colorfg/${colorfg}/g" >> $fish/fzf.fish
 
# fuzzel
fuzzel="$HOME/.config/fuzzel"
rm $fuzzel/fuzzel.ini
sed $fuzzel/fuzzel.template -e "s/colorbg/${colorbg}/" -e "s/colorfg/${colorfg}/" >> $fuzzel/fuzzel.ini
 
# yambar
yambar="$HOME/.config/yambar"
rm $yambar/config.yml
sed $yambar/config.template -e "s/colorbg/${colorbg}/" -e "s/colorfg/${colorfg}/" >> $yambar/config.yml
 
# niri
niri="$HOME/.config/niri"
rm $niri/config.kdl
sed $niri/config.template -e "s/colorbg/${colorbg}/" -e "s/colorfg/${colorfg}/" >> $niri/config.kdl

# ghostty
ghostty="$HOME/.config/ghostty"
rm $ghostty/config
sed $ghostty/config.template -e "s/colorbg/${colorbg}/" -e "s/colorfg/${colorfg}/" >> $ghostty/config

