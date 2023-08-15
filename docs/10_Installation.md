<!-- START-ADD-TTY-PLAYER -->
<html>
    <script src=ttyrec/webcomponents-lite.min.js></script>
    <link rel=stylesheet href=ttyrec/tty-player.css>
    <script src=ttyrec/term.min.js></script>
    <script src=ttyrec/tty-player.min.js></script>
</html>
<!-- END-ADD-TTY-PLAYER -->

## Installation

### Get all sources

#### Git

```shell
$ sudo -i
$ cd /opt/
$ git clone https://github.com/axelhahn/bash_colorfunctions.git
```

Using git is the prefered way to update with a simple `git pull`.

<tty-player controls rows=20 cols=90 src=files/install_git.ttyrec poster=npt:0.3></tty-player>

#### Zip

If you don't want to use git you can download a zip archive from the repository and extract it.

```shell
wget -O bash_colorfunctions.zip \ 
    "https://github.com/axelhahn/bash_colorfunctions/archive/refs/heads/main.zip"
unzip bash_colorfunctions.zip
```

This creates a subdir *bash_colorfunctions-main*. 