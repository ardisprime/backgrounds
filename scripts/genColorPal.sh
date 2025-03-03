#!/bin/sh

# gen colors
magick $1 -colors 2 -unique-colors txt:pallette.txt

# clean up colorfile
sed -e '2,3s/^.*#//' -e '2,3s/ .*$//' -e '2,3s/..$//' -e '1d' -i pallette.txt

