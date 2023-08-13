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

color.echo "blue" "white" "blue on white"

echo
echo "Test mit Presets:"

color.echo "error" "Test preset error"
color.echo "unknown" "Test preset unknown"
color.echo "ok" "Test preset OK"

echo
echo "Test mit ANSI"

color.ansi 4
echo "hello"

color.debug

color.debugon
color.debug
color.bold
echo "I am bold"
color.debugoff
color.reset

echo
echo done