#!/bin/sh

backgrounds="$HOME/backgrounds"

# select image
randomImage=$(find "${backgrounds}/" -iname "*.png" | shuf -n 1)

# create symlink
bgName="${backgrounds}/background"
if test -e $bgName ;
then
  rm $bgName
fi
ln -s $randomImage $bgName

