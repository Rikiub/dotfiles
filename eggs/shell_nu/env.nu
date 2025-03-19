# Paths
use std/util "path add"
path add "~/.local/bin"

# uv
$env.UV_CACHE_DIR = "/mnt/Datos/.uv-cache"

### XDG Base Directory
# Setup
$env.XDG_CONFIG_HOME  = $env.HOME | path join ".config"
$env.XDG_CACHE_HOME   = $env.HOME | path join ".cache"
$env.XDG_DATA_HOME    = $env.HOME | path join ".local/share"

# Overrides
$env.GNUPGHOME        = $env.XDG_DATA_HOME   | path join "gnupg"
$env.CARGO_HOME       = $env.XDG_DATA_HOME   | path join "cargo"
$env.GOPATH           = $env.XDG_DATA_HOME   | path join "go"
$env.GTK2_RC_FILES    = $env.XDG_CONFIG_HOME | path join "gtk-2.0/gtkrc"
$env.HISTFILE         = $env.XDG_CACHE_HOME  | path join "bash/history"
$env.RUSTUP_HOME      = $env.XDG_DATA_HOME   | path join "rustup"
$env.npm_config_cache = $env.XDG_CACHE_HOME  | path join "npm"
$env._JAVA_OPTIONS    = $"-Djava.util.prefs.userRoot=($env.XDG_CONFIG_HOME)/java"
