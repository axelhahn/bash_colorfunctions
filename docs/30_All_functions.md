## All functions

### Information

#### color.help - Show help

To see all available color functions you can call `color.help`

```txt
$ . ./src/color.class.sh ; NO_COLOR=1; color.help
_______________________________________________________________________________

   ###   ###  #      ###  #### 
  #     #   # #     #   # #   # 
  #     #   # #     #   # #### 
  #     #   # #     #   # #  # 
   ###   ###  #####  ###  #   # 
_________________________________________________________________________/ v0.8

HELP:
  'color' is a class like component to simplify the handling of ansi colors and keeps
  the color settings readable. A set NO_COLOR=1 will be respected.

  Author: Axel Hahn
  License: GNU GPL 3.0
  Source: <https://github.com/axelhahn/bash_colorfunctions>
  Docs: <https://www.axel-hahn.de/docs/bash_colorfunctions/>


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
  color.preset PRESET
                   Apply the color set of foreground and background of a given 
                   preset name.
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

  color.blink      start blinking text
  color.bold       start bold text
  color.invert     start inverted text
  color.underline  start underline text

VALUES:
  COLOR            a color; it can be...
                   - a color keyword, eg black, blue, red, ... for all
                     known values run 'color.list'
                   - a value 0..7 to set basic colors 30..37 (or 40..47)
                   - an ansi color value eg. "30" or "1;42"
                   - RGB hexcode with '#' as prefix followed by 2 digit 
                     hexcode for red, green and blue eg. "#10404f" 
                     (like css rgb color codes)
  PRESET           Name of a custom preset; see DEFINE PRESETS below.
  RAWCOLOR         an ansi color value eg. "30" (black foreground) or 
                   "1;42" (lightgreen background)


DEFINE PRESETS:
  A shortcut for a combination of foreground + background color. The label
  is part of a bash variable with the prefix 'COLOR_PRESET_'.
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
    color.echo "red" "ERROR: Something went wrong."

  (3)
  Use a custom preset:
    COLOR_PRESET_error=("white" "red")
    color.echo "error" "ERROR: Something went wrong."

  This defines a preset named "error". "white" is a colorname
  for the foreground color, "red" ist the background.

INFO: NO_COLOR=1 was set. The coloring functionality is DISBALED.

```

#### color.list - Show color names

`color.list` Shows a table with valid color names and gives a preview.

You can use different styles to define a color. See the menu item -> [Colors](50_Colors.md).

#### color.presets - Show custom presets

Show all defined presets.
See the menu item -> [Color Presets](60_Color_presets.md) for more information.

#### color.count - Get count of colors

It shows the count of colors in the current terminal

### Debugging

This feature you don't need for usage in your scripts.

If colors were not set as expected there is a possibility to enable debugging.

A few functions in *color.class.sh* have a function `color.__wd TEXT` (wd = write debug output). This text will be shown with a prefix "DEBUG:".

#### color.debugon - Enable debugging

This enables debugging.

#### color.debugoff - Disable debugging

It does what you expect - the debugging will de disabled.

#### color.debugstatus - Show debugstatus

To complete the debugging feature: this function shows if the debugging is on or off.


### Colored output

#### Introduction

With these commands you can set the color(s) only. The output of following commands will be shown in this color. 

* color.bg
* color.fg
* color.preset

The coloring ends if you call `color.reset`.

If you have a string that should be displayed in a colored way then you can print it with:

* color.echo or
* color.print

#### color.bg - Set background

Set a background color. The 2nd parameter is optional to set
a foreground color too.

**Syntax**:

```txt
color.bg COLOR (COLOR2)
```
For COLOR values see -> [Colors](50_Colors.md)

#### color.fg - Set font color

Set a foreground color. The 2nd parameter is optional to set
a background color too.

**Syntax**:

```txt
color.fg COLOR (COLOR2)
```

For COLOR values see -> [Colors](50_Colors.md)

#### color.preset - Set a preset colorset

Apply the color set of foreground and background of a given preset.

**Syntax**:

```txt
color.preset PRESET
```

See the menu item -> [Color Presets](60_Color_presets.md) for more information.

#### color.echo - Write a colored text

Writes a colored text with carriage return and resets colors afterards.

To prevent a carriage return use `color.print`.

**Syntax**:

```txt
color.echo COLOR|PRESET (COLOR2) TEXT
```

The 1st param must be a COLOR(code/ name) for the 
foreground or a label of a preset.

The 2nd is optional and will be used as color for the background, but can be skipped.

Everything behind is text for the output.

For COLOR values see -> [Colors](50_Colors.md)
For using PRESET see -> [Color Presets](60_Color_presets.md)

#### color.print - write a colored text

see color.echo - color.print has the same parameters and does the same but without carriage return.

#### color.reset - Reset colors

Any set color or effect eg. with color.fg/ color.bg will be turned off.

It is a shortcut for

```shell
printf "\e[0m"
```

#### color.set - Set colors

This function sets multiple ansi colors or effects. It handles ANSI codes only and is the function that is used internally. It is more a low level function.

I do NOT recommend not to use color.set. 
Better use color.bg / color.fg / color.preset / color.echo to have easy readable code.

**Syntax**:

```txt
color.set RAWCOLOR (RAWCOLOR2 (... RAWCOLOR_N))
```

RAWCOLOR is an ansi color value eg. "30" (black foreground) or  "1;42" (lightgreen background).


### Other

#### color.blink

Start blinking text.
It is a shortcut for

```shell
printf "\e[5m"
```

#### color.bold

Start bold text.
It is a shortcut for

```shell
printf "\e[1m"
```

#### color.invert

Start inverted text.
It is a shortcut for

```shell
printf "\e[7m"
```

#### color.underline

Start underline text.
It is a shortcut for

```shell
printf "\e[4m"
```
