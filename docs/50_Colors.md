## Colors

### List

To see the color aa name or ansi code you can call `color.list`

![Alt text](images/color_list.png)

### Colors

When using colors there are 3 ways.

* **ansi values** - if you are familiar with the ansi color codes you can set white as "1;47" or cyan as "36"
Set cyan foreground: `color.fg "36"` 
Set white background: `color.bg "1;47"`

* **0..7** - this can set only the foreground colors 30 to 37 and background colors 40 to 47. The idea is not to care about the different ranges for foreground and background.
  * 0 - black
  * 1 - red
  * 2 - green
  * 3 - brown
  * 4 - blue
  * 5 - purple
  * 6 - cyan
  * 7 - gray
Set cyan foreground: `color.fg "6"` 
Set gray background: `color.bg "7"`

* **color names** - The color names are not standard. But they are simpler to handle than fiddly ansi color values.
Set cyan foreground: `color.fg "cyan"` 
Set white background: `color.bg "white"`
