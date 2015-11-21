#!/bin/zsh

current_transparency=$(gconftool-2 --get \
  /apps/guake/style/background/transparency)

if [[ $current_transparency -eq 1 ]]
then
  next_transparency=14
else
  next_transparency=1
fi

gconftool-2 --type integer --set /apps/guake/style/background/transparency \
  $next_transparency

