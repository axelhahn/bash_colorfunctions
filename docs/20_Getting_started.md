## Getting started

### Source the script

In your shell script you need to source the file *bash_colorfunctions/src/color.class.sh*.
Then you can use functions that have a bit a class like look and feel named `color.[NAME]`.

#### Local script

You can source the file from the local installation.

```shell
. /opt/bash_colorfunctions/src/color.class.sh || exit 1
```

OR

#### From your script directory

If you want to deploy your script, you also can copy the single file *color.class.sh* into your directory.

```shell
cd [your directory of scripts]
cp /opt/bash_colorfunctions/src/color.class.sh .
```
Then you can source it with a relative path

```shell
. $( dirname $0 )/color.class.sh || exit 1
```

Keep in mind that this method is unhandy to update the *color.class.sh*.

### Start coloring

Let's start with echo of a colored text:

```shell
color.echo "white" "green" "Yep, it seems to work!"
```

You also can initialize a wanted color. Then execute your commands that will drop their output in that color. Finally reset the color.
As an example I set the foreground color (fg) to blue (ansi code 34):

```shell
color.fg "blue"
ls -l
color.reset
```

You need an overview over all available functions and colors.
See "All functions" and "Colors" on the left.
