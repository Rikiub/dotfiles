# Antidote Plugin Manager
export ANTIDOTE_HOME=$ZDOTDIR/antidote
source '/usr/share/zsh-antidote/antidote.zsh'
antidote load

# Plugins Key-bindings

bindkey '^[[1;3A' history-substring-search-up
bindkey '^[[1;3B' history-substring-search-down
