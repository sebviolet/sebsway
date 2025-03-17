#!/bin/bash

export CLUTTER_BACKEND=wayland
export GDK_BACKEND=wayland
export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_SCALE_FACTOR=1
#env = QT_WAYLAND_DISABLE_WINDOWDECORATION,1
#env = QT_STYLE_OVERRIDE,kvantum
export SDL_VIDEODRIVER=wayland
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_DESKTOP=sway
export XDG_SESSION_TYPE=wayland
#export GDK_SCALE,1
export MOZ_ENABLE_WAYLAND=1
export OZONE_PLATFORM=wayland
export ELECTRON_OZONE_PLATFORM_HINT=wayland

# usage: import-gsettings
config="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-3.0/settings.ini"
if [ ! -f "$config" ]; then exit 1; fi

gnome_schema="org.gnome.desktop.interface"
gtk_theme="$(grep 'gtk-theme-name' "$config" | cut -d'=' -f2)"
icon_theme="$(grep 'gtk-icon-theme-name' "$config" | cut -d'=' -f2)"
cursor_theme="$(grep 'gtk-cursor-theme-name' "$config" | cut -d'=' -f2)"
font_name="$(grep 'gtk-font-name' "$config" | cut -d'=' -f2)"
gsettings set "$gnome_schema" gtk-theme "$gtk_theme"
gsettings set "$gnome_schema" icon-theme "$icon_theme"
gsettings set "$gnome_schema" cursor-theme "$cursor_theme"
gsettings set "$gnome_schema" font-name "$font_name"
