## Color presets

### Define presets

A color preset is an array with foreground and background color.

A preset label is part of a variable behind a prefix `COLOR_PRESET_`.

In your script define add one variable per preset like that:

```txt
# custom presets as array of foreground and background color
#            +--- label is part of the variable
#            |
#            v
COLOR_PRESET_error=("white" "red")
COLOR_PRESET_ok=("white" "green")
```

### Usage

You can use the preset name in `color.echo` and `color.print` eg.

```txt
color.echo "error" "ERROR: something happened"
color.echo "ok" "OK"
```
