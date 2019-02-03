# User configuration

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"

eval "$(pyenv init -)"
eval "$(rbenv init -)"
eval "$(goenv init -)"

# You may need to manually set your language environment

export LANG=en_US.UTF-8

autoload -Uz colors
colors

autoload -Uz compinit
compinit

setopt correct

setopt histignorealldups

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

tmux_automatically_attach_session
