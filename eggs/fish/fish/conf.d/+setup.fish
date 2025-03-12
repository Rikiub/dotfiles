# Disable greeting
set -U fish_greeting

# Add local bin
fish_add_path ~/.local/bin

# antidot: Clear $HOME and follow XDG Base Directory standard
# WARNING: Don't remove, could break things
if command -q antidot
    antidot init -s fish | source
end
