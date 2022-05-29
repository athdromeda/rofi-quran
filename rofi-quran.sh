#!/usr/bin/env bash

selection=$(rofi -i -dmenu $@ -font "Traditional Arabic 14" -p 'Cari' < $(dirname $0)/quran.txt)
verse=$(echo $selection | sed "s|.*$(echo -e "\u2013")||")
echo -n "$verse" | xclip -selection clipboard