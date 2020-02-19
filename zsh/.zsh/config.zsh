export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"

eval "$(pyenv init -)"
eval "$(rbenv init -)"

export LANG=en_US.UTF-8

HISTFILE=$HOME/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

autoload -Uz colors
colors

autoload -Uz compinit
compinit

setopt correct
