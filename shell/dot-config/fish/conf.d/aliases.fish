# ls options
alias ls="ls --color=auto --group-directories-first -X -F -N -h"

# eza: A modern, maintained replacement for ls
if command -q eza
    alias eza="eza --icons --group-directories-first --header --no-filesize"
    alias ls="eza"
end

# Startship Prompt
if command -q starship
    starship init fish | source
end

# Zoxide: Zoxide is a smarter cd command, inspired by z and autojump.
if command -q zoxide
    zoxide init fish | source
end

# bat: A cat(1) clone with syntax highlighting and Git integration.
if command -q bat
    # alias cat="bat"

    # manpages highlight and theme
    export BAT_THEME=base16
    export MANPAGER="sh -c 'col -bx | bat -l man -p'"
    export MANROFFOPT="-c"
end
