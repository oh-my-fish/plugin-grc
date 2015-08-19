# grc-plugin

A [grc][grc] plugin.

## Screenshot

![screenshot][screenshot]

## Options

It's possible to define additional command options via universal `grcplugin` variables.
For example,
```
set -U grcplugin_ls --color -l
```
lets `grc` call `ls` with `--color` and `-l` options.

[grc]: http://kassiopeia.juls.savba.sk/~garabik/software/grc.html
[screenshot]: https://raw.githubusercontent.com/tannhuber/media/master/grc-plugin.png
