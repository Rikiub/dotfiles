#!/usr/bin/env sh

if [ "$XDG_CURRENT_DESKTOP" = "niri" ]; then
  niri msg action do-screen-transition
fi

if [[ -v GTK_ICON_DARK ]]; then
  gsettings set org.gnome.desktop.interface icon-theme "$GTK_ICON_DARK"
fi

if [[ -v GTK_CURSOR_DARK ]]; then
  gsettings set org.gnome.desktop.interface cursor-theme "$GTK_CURSOR_DARK"
fi

gsettings set org.gnome.desktop.interface gtk-theme "${GTK_THEME_DARK:-adw-gtk3-dark}"
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
