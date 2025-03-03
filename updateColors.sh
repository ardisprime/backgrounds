#!/bin/sh

subscripts="./subscripts"
 
# gen new pallette
$subscripts/genColorPal.sh 00.png

# set colors for all apps
$subscripts/setColors.sh

