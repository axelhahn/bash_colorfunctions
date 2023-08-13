## Color presets

### Define presets

A color preset is a shortcut with a wanted label for a combination of foreground and background color.

A preset label is part of a variable behind a prefix `COLOR_PRESET_`.
The color values are written as array where the foreground is the 1st parameter and the optional background must be the 2nd.

In your script define add one variable per preset like that:

```shell
# custom presets as array of foreground and background color
#
#            +--- the label is part of the variable
#            |
#            v
COLOR_PRESET_error=("white" "red")
COLOR_PRESET_ok=("white" "green")
```

This defines the labels "error" and "ok".

Don't set a label of an existing color like listed in 'color.list' - use describing strings.

### Usage

You can use the preset name in `color.echo` and `color.print` eg.

```txt
color.echo "error" "ERROR: something happened"
color.echo "ok" "OK"
```

### List

To list all defined presets you can call `color.presets`.

![List of custom presets](images/presets_list.png)