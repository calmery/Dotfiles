eval "$(nodenv init -)"
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

export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"

export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"

export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/imagemagick@6/lib"
export CPPFLAGS="-I/usr/local/opt/imagemagick@6/include"
export PKG_CONFIG_PATH="/usr/local/opt/imagemagick@6/lib/pkgconfig"

export PATH="/Applications/Blender.app/Contents/MacOS:$PATH"

export LDFLAGS="-L/usr/local/opt/mysql@5.6/lib"
export CPPFLAGS="-I/usr/local/opt/mysql@5.6/include"

eval "$(exenv init -)"

source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

export PATH="/Users/calmery/.deno/bin:$PATH"
