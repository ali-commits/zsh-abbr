# zsh-abbr
This zsh plugin provides abbreviation expansion functionality similar to [fish's](https://fishshell.com/docs/current/commands.html) and [VIM's](https://vim.fandom.com/wiki/Using_abbreviations) .

## Installation
### Using [zplug](https://github.com/b4b4r07/zplug)

```zsh
zplug "newaaa41/zsh-abbr"
```

Alias settings are written after `zplug load`.

### Using [zinit](https://github.com/zdharma/zinit)

```zsh
zinit light newaaa41/zsh-abbr
```
## Demo
![demo](https://github.com/newaaa41/zsh-abbr/blob/master/demo.gif?raw=true)
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
abbr 0.4.0
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
