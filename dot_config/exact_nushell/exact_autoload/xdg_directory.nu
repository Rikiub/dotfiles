# XDG Base Directory
load-env {
	# Setup
	XDG_CONFIG_HOME: ($env.HOME | path join .config)
	XDG_CACHE_HOME:  ($env.HOME | path join .cache)
	XDG_DATA_HOME:   ($env.HOME | path join .local/share)
	
	# Overrides
	_JAVA_OPTIONS:    $"-Djava.util.prefs.userRoot=($env.XDG_CONFIG_HOME)/java"
	
	GOPATH:           ($env.XDG_DATA_HOME | path join go)
	CARGO_HOME:       ($env.XDG_DATA_HOME | path join cargo)
	RUSTUP_HOME:      ($env.XDG_DATA_HOME | path join rustup)
	GNUPGHOME:        ($env.XDG_DATA_HOME | path join gnupg)
	
	HISTFILE:         ($env.XDG_CACHE_HOME | path join bash/history)
	npm_config_cache: ($env.XDG_CACHE_HOME | path join npm)
}
