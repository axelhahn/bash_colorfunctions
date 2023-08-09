# Bash: color functions

Free software and Open source.

👤 Author: Axel Hahn \
📄 Source: <https://github.com/axelhahn/bash_colorfunctions> \
📜 License: GNU GPL 3.0 \
📗 Docs: see <https://www.axel-hahn.de/docs/bash_colorfunctions>


This is work in progress.

## Help

```txt
_______________________________________________________________________________

   ###   ###  #      ###  #### 
  #     #   # #     #   # #   # 
  #     #   # #     #   # #### 
  #     #   # #     #   # #  # 
   ###   ###  #####  ###  #   # 
_________________________________________________________________________/ v0.1

HELP:
  color is a class like component for setting colors in your bash scripts.

FUNCTIONS:

  ---------- Information:

  color.help       this help
  color.list       show a table with valid color names


  ---------- Colored output:

  color.bg COLOR (COLOR2)
                   set a background color; a 2nd parameter is optional to set
                   a foreground color too
  color.fg COLOR (COLOR2)
                   set a foreground color; a 2nd parameter is optional to set
                   a background color too
  color.echo COLOR (COLOR2) TEXT
                   write a colored text with carriage return and reset colors
                   The 1st param must be a COLOR(code/ name) for the 
                   foreground. The 2nd CAN be a color for the background, but 
                   can be skipped. Everything behind is text for the output.
  color.print COLOR (COLOR2) TEXT
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
                     known values run color.list
                   - a value 0..7 to set simple colors 30..37 (or 40..47)
                   - an ansi color value eg. "30" or "1;42"
  RAWCOLOR         an ansi color value eg. "30" or "1;42"

EXAMPLES:
  First you need to source the file colortest.sh.

  (1)
  Show output of the command 'ls -l' in blue
    color.fg "blue"
    ls -l
    color.reset

  (2)
  show a red error message
    color.echo "red" "ERROR: Something bad happened."
```

## Colors

To see the color aa name or ansi code you can call `color.list`

![Alt text](docs/images/color_list.png)