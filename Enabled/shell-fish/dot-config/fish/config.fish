# Disable greeting
set -U fish_greeting

# Source ~/.profile
if test -e ~/.profile
    replay source ~/.profile
end
