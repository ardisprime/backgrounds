#!/bin/sh

subscripts="./subscripts"

# choose a new random image
$subscripts/chooseImage.sh
 
# gen new pallette
$subscripts/genColorPal.sh background

# set colors for all apps
$subscripts/setColors.sh

