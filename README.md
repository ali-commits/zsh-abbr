# zsh-abbr
This zsh plugin provides functionality similar to [fish's](https://fishshell.com/docs/current/commands.html) and [VIM's](https://vim.fandom.com/wiki/Using_abbreviations) abbreviation expansion.

## Installation
### Using [zplug](https://github.com/b4b4r07/zplug)

```zsh
zplug "newaaa41/zsh-abbr"
```

Alias settings are written after `zplug load`.

### Using [zpluging](https://github.com/zdharma/zplugin)

```zsh
zplugin light newaaa41/zsh-abbr
```

## For Example

```zsh
$ abbr -g G="| grep"
$ ps aux G<push space key>
->
$ ps aux | grep 
```

```zsh
$ git branch
* master
$ abbr -g -e B='$(git symbolic-ref --short HEAD 2> /dev/null)'
$ git push origin B<push space key>
->
$ git push origin master 
```

## Help
Show `abbr --help`.

```zsh
$ abbr --help
abbr 0.2.0
usage: abbr [OPTIONS] {name=value ...}
       abbr -u {name ...}
       abbr --init

options:
  -c, --command   register as 'alias name=value'
  -g, --global    register as 'alias -g name=value'
  -e, --eval      evaluates subshells on expansion.
  -i, --init      initialize abbrev-alias. execute with .zshrc
  -h, --help      show this help
  -v, --version   show version
```
