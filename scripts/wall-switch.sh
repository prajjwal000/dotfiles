#!/bin/bash

WALL_DIR="~/Pictures/Wallpapers"

cd "$WALL_DIR"

IFS=$'\n'

SELECTED_WALL=$(for a in *.jpg *.png; do echo -en "$a\0icon\x1f$a\n" ; done | rofi -dmenu -p "🎨 Select Wallpaper" -show-icons -theme "/home/treeplanter/.local/scripts/solarized-osaka.rasi")

if [ -n "$SELECTED_WALL" ]; then
    matugen image "$SELECTED_WALL"
    killall waybar
    waybar & disown
fi

