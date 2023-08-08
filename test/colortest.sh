#!/bin/bash

. $( dirname $0 )/../src/color.class.sh

color.help

color.list
echo

color.fg "green" "yellow"
echo -n "Und nun grün"
color.reset
echo "Und nun ist es zurückgesetzt."

color.fg "white" "red"
echo -n "Fehler"
color.reset
echo

color.bg "purple"
echo -n "Fehler"
color.reset
echo "jjj"




echo
echo done