#!/bin/bash

. $( dirname $0 )/../src/color.class.sh
_line="-----------------------------------------------------------------------------"



color.help
color.list

echo

echo $_line
echo "Usage of color names"
color.echo "blue" "white" "Hello there."

echo $_line
echo "Usage of hex codes"

color.echo "blue" "#ffffff" "Hello there."

echo $_line

echo
echo "done."