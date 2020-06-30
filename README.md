[![][travis-badge]][travis-link]
![][license-badge]

<div align="center">
  <a href="http://github.com/oh-my-fish/oh-my-fish">
  <img width=90px  src="https://cloud.githubusercontent.com/assets/8317250/8510172/f006f0a4-230f-11e5-98b6-5c2e3c87088f.png">
  </a>
</div>
<br>

# plugin-grc

A [grc][grc] plugin plugin for [Oh My Fish][omf-link].

> Note: You need to have grc installed

![screenshot][screenshot]

## Install

```fish
$ omf install grc
```

## Built-in command colorizers

Everyone supported by the original [grc](grc) tool. If there are tools that are
missing add them to the executables file and make a pull-request for it

Among others, it includes the following:

- `cat`
- `cvs`
- `df`
- `diff`
- `dig`
- `gcc`
- `g++`
- `ifconfig`
- `ls`
- `make`
- `mount`
- `mtr`
- `netstat`
- `ping`
- `ps`
- `tail`
- `traceroute`
- `wdiff`

## Plugin options

It's possible to define additional command options via universal `grcplugin`
variables. For example:

```fish
set -U grcplugin_ls --color -l
```

Makes `grc` call `ls` with `--color` and `-l` options.

## Override command colorizers

It's possible to override the commands that are colorized via `grc_plugin_execs`
variable. For example:

```fish
set -U grc_plugin_execs gcc g++ make
```

Enables `grc` colorizing for only `gcc`, `g++` & `make` and disables all others.

Alternatively, you can specify commands that the plugin *should not* override.
You can do that via the grc_plugin_ignore_execs variable:

```fish
set -U grc_plugin_ignore_execs ls
```

# License

[MIT][mit] © [oh-my-fish][author] et [al][contributors]


[mit]:            http://opensource.org/licenses/MIT
[author]:         http://github.com/oh-my-fish
[contributors]:   https://github.com/oh-my-fish/pkg-plugin-grc/graphs/contributors
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish

[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
[travis-badge]:   http://img.shields.io/travis/oh-my-fish/plugin-grc.svg?style=flat-square
[travis-link]:    https://travis-ci.org/oh-my-fish/plugin-grc
[grc]: http://kassiopeia.juls.savba.sk/~garabik/software/grc.html
[screenshot]: https://raw.githubusercontent.com/tannhuber/media/master/grc-plugin.png


