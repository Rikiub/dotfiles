#!/usr/bin/env sh

if [ "$XDG_CURRENT_DESKTOP" = "niri" ]; then
  niri msg action do-screen-transition
fi

if [[ -v GTK_ICON_LIGHT ]]; then
  gsettings set org.gnome.desktop.interface icon-theme "$GTK_ICON_LIGHT"
fi

if [[ -v GTK_CURSOR_LIGHT ]]; then
  gsettings set org.gnome.desktop.interface cursor-theme "$GTK_CURSOR_LIGHT"
fi

gsettings set org.gnome.desktop.interface gtk-theme "${GTK_THEME_DARK:-adw-gtk3}"
gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
