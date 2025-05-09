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

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/Developer/Developer/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/Developer/Developer/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/Developer/Developer/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/Developer/Developer/google-cloud-sdk/completion.zsh.inc"; fi

export PATH=$PATH:"$HOME/Developer/google-cloud-sdk/bin"

export PATH="$N_PREFIX/bin:$PATH"

export GIT_EXTERNAL_DIFF=difft
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

. "$HOME/.cargo/env"
