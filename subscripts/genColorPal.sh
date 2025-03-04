#!/bin/sh

backgrounds="$HOME/backgrounds"

# gen colors
magick $1 -gamma 0.2 -colors 2 -unique-colors txt:$backgrounds/pallette.txt

# clean up colorfile
sed -e '2,3s/^.*#//' -e '2,3s/ .*$//' -e '2,3s/..$//' -e '1d' -i $backgrounds/pallette.txt

