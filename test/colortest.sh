#!/bin/bash

. $( dirname $0 )/../src/color.class.sh
_line="-----------------------------------------------------------------------------"


NO_COLOR=

color.help
color.list

echo
echo $_line
echo "Usage of color names"
color.echo "blue" "white" "Hello there."

echo
echo $_line
echo "Usage of hex codes"
color.echo "#ffffff" "#303080" "Hello there."

echo
echo $_line
echo "Usage Presets"

COLOR_PRESET_error=("white" "red")
COLOR_PRESET_ok=("white" "green")
COLOR_PRESET_cli=("blue")

color.presets
color.echo "ok" "OK, this is fine."

color.echo "cli" "I am cli output"
color.preset "cli"
ls -l
color.reset


echo
echo $_line
echo test NO_COLOR=1
NO_COLOR=1
echo 'color.echo "ok" "If this is colored then something is wrong."'
color.debugon
color.echo "ok" "If this is colored then something is wrong."
color.debugoff
color.echo "ok" "If this is colored then something is wrong."

echo
echo $_line

echo
echo "done."