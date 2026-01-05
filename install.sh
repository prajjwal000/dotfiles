#!/bin/bash

sudo pacman -S matugen ghostty neovim swaync waybar rofi dolphin hyprpolkitagent swww ttf-space-mono-nerd
hyprpm update
hyprpm add https://github.com/hyprwm/hyprland-plugins
hyprpm enable hyprscrolling
cp -r Wallpapers ~/Pictures/Wallpapers
cp -r rofi ~/.config/rofi
cp -r ghostty ~/.config/ghostty
cp -r swaync ~/.config/swaync
cp -r nvim ~/.config/nvim
cp -r waybar ~/.config/waybar
cp -r matugen ~/.config/matugen
cp -r hypr ~/.config/hypr
