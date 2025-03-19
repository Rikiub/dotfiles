# XDG Base Directory
set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_DATA_HOME "$HOME/.local/share"

# Overrides
set -gx GNUPGHOME "$XDG_DATA_HOME/gnupg"
set -gx GOPATH "$XDG_DATA_HOME/go"
set -gx GTK2_RC_FILES "$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
set -gx HISTFILE "$XDG_CACHE_HOME/bash/history"
set -gx RUSTUP_HOME "$XDG_DATA_HOME/rustup"
set -gx _JAVA_OPTIONS "-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java"
set -gx npm_config_cache "$XDG_CACHE_HOME/npm"
set -gx CARGO_HOME "$XDG_DATA_HOME/cargo"
