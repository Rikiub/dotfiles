alias ls="ls --color=auto --group-directories-first -X -F -N -h"

# eza: A modern, maintained replacement for ls
if command -v eza &> /dev/null; then
	alias eza="eza --icons --group-directories-first --header --no-filesize"
	alias ls="eza"
fi

# bat: A cat(1) clone with syntax highlighting and Git integration.
if command -v bat &> /dev/null; then
	alias cat="bat --plain"

	# manpages highlight and theme
	# export BAT_THEME=base16
	export MANPAGER="sh -c 'col -bx | bat -l man -p'"
	export MANROFFOPT="-c"
fi

# zoxide: Zoxide is a smarter cd command, inspired by z and autojump.
if command -v zoxide &> /dev/null; then
	eval "$(zoxide init zsh)"
fi
