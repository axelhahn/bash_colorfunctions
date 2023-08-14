## Colors

### List

To see the colors, names or ansi code you can call `color.list`

![List of color names and its values](images/color_list.png)

### Colors

When using colors there are multiple ways.

#### Ansi values

If you are familiar with the ansi color codes already you can set white as "1;47" or cyan as "36"

**Examples**:

Set cyan foreground: 

```shell
color.fg "36"
```

Set white background:

```shell
color.bg "1;47"
```

#### Basic colors (0..7)

This can set only the foreground colors 30 to 37 and background colors 40 to 47. Do not to care about the different ranges for foreground and background - the prefix '3' (foreground) or '4' (background) will be set internally  by the used function.
* 0 - black
* 1 - red
* 2 - green
* 3 - brown
* 4 - blue
* 5 - purple
* 6 - cyan
* 7 - gray

**Examples**:

Set cyan foreground: 

```shell
color.fg "6"
```

Set gray background:

```shell 
color.bg "7"`
```

#### color names

The color names are not standard. But they are simpler to handle than fiddly ansi color values.
These colors you get from the `color.list`.

* black
* blue
* brown
* cyan
* darkgray
* green
* lightblue
* lightcyan
* lightgray
* lightgreen
* lightpurple
* lightred
* purple
* red
* white
* yellow

**Examples**:

Set cyan foreground:

```shell 
color.fg "cyan"
```

Set white background: 

```shell 
color.bg "white"
```

#### RGB hex code

If you are familiar with css color hexcodes you maybe like this syntax.

* use a `#` as prefix
* followed by 2 digits for the colors red, green and blue

**Example**:

Set a blue background:

```shell
color.bg "#10404f"
```
