#!/bin/bash

sudo pacman -S --needed matugen ghostty neovim swaync waybar rofi dolphin hyprpolkitagent swww ttf-space-mono-nerd wl-clipboard
hyprpm update
hyprpm add https://github.com/hyprwm/hyprland-plugins
hyprpm enable hyprscrolling

cp -r Wallpapers ~/Pictures/Wallpapers
cp -r rofi ~/.config
cp -r ghostty ~/.config
cp -r swaync ~/.config
cp -r nvim ~/.config
cp -r waybar ~/.config
cp -r matugen ~/.config
cp -r hypr ~/.config
