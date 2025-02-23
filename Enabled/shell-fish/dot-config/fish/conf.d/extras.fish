# ls options
alias ls="ls --color=auto --group-directories-first --human-readable"

# eza: A modern, maintained replacement for ls
if command -q eza
    alias eza="eza --icons --group-directories-first --header"
    alias ls="eza"
end

# Zoxide: Zoxide is a smarter cd command, inspired by z and autojump.
if command -q zoxide
    zoxide init fish | source
end

# bat: A cat(1) clone with syntax highlighting and Git integration.
if command -q bat
    alias cat="bat --plain"

    # manpages highlight and theme
    export BAT_THEME=base16
    export MANPAGER="sh -c 'col -bx | bat -l man -p'"
    export MANROFFOPT="-c"
end
