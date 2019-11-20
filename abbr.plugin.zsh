#!/usr/bin/env zsh

if [[ -n $ZSH_VERSION ]]; then
  fpath+=${0:A:h}/src
  autoload -Uz abbr
  abbr --init
fi
