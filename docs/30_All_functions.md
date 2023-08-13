## Help

To see all available color functions you can call `color.help`

```txt
$ . ./src/color.class.sh ; color.help
_______________________________________________________________________________

   ###   ###  #      ###  #### 
  #     #   # #     #   # #   # 
  #     #   # #     #   # #### 
  #     #   # #     #   # #  # 
   ###   ###  #####  ###  #   # 
_________________________________________________________________________/ v0.4

HELP:
  color is a class like component for setting colors in your bash scripts.

  Author: Axel Hahn
  License: GNU GPL 3.0
  Source: <https://github.com/axelhahn/bash_colorfunctions>


FUNCTIONS:

  ---------- Information:

  color.help       this help
  color.list       show a table with valid color names
  color.presets    show a table with defined custom presets

  color.count      get count of colors in the current terminal

  color.debugon    enable debugging
  color.debugoff   disable debugging
  color.debugstatus  show debugstatus

  ---------- Colored output:

  color.bg COLOR (COLOR2)
                   set a background color; a 2nd parameter is optional to set
                   a foreground color too
  color.fg COLOR (COLOR2)
                   set a foreground color; a 2nd parameter is optional to set
                   a background color too
  color.echo COLOR|PRESET (COLOR2) TEXT
                   write a colored text with carriage return and reset colors
                   The 1st param must be a COLOR(code/ name) for the 
                   foreground or a label of a preset.
                   The 2nd CAN be a color for the background, but can be 
                   skipped.
                   Everything behind is text for the output.
  color.print COLOR|PRESET (COLOR2) TEXT
                   see color.echo - the same but without carriage return.
  color.reset      reset colors
  color.set RAWCOLOR (RAWCOLOR2 (... RAWCOLOR_N))
                   set ansi colors; it can handle multiple color values


  ---------- Other:

  color.bold       start bold text
  color.underline  start underline text
  color.blink      start blinking text
  color.invert     start inverted text
  color.ansi ID    set ansi command

VALUES:
  COLOR            a color; it can be...
                   - a color keyword, eg black, blue, red, ... for all
                     known values run 'color.list'
                   - a value 0..7 to set basic colors 30..37 (or 40..47)
                   - an ansi color value eg. "30" or "1;42"
  PRESET           a shortcut for a combination of foreground + background
                   color. 
                   COLOR_PRESET_<LABEL>=(<FOREGROUND> <BACKGROUND>)

                   example:
                   COLOR_PRESET_error=("white" "red")
  RAWCOLOR         an ansi color value eg. "30" (black foreground) or 
                   "1;42" (lightgreen background)


DEFINE PRESETS:
  A shortcut for a combination of foreground + background color. The label
  ist part of a bash variable with the prefix 'COLOR_PRESET_'.
  The value is a bash array with 2 colors for foreground and background. 
  See the value description for COLOR above.

  SYNTAX:
  COLOR_PRESET_<LABEL>=(<FOREGROUND> <BACKGROUND>)

  To see all defined presets use 'color.presets'


EXAMPLES:
  First you need to source the file [path]/color.class.sh.
  . [path]/color.class.sh

  (1)
  Show output of the command 'ls -l' in blue
    color.fg "blue"
    ls -l
    color.reset

  (2)
  show a red error message
    color.echo "red" "ERROR: Something bad happened."

  (3)
  Use a custom preset:
    COLOR_PRESET_error=("white" "red")
    color.echo "error" "ERROR: Something bad happened."

  This defines a preset named "error". "white" is a colorname
  for the foreground color, "red" ist the background.

```
