export ZPLUG_HOME=/usr/local/opt/zplug

source $ZPLUG_HOME/init.zsh

zplug denysdovhan/spaceship-prompt, use:spaceship.zsh, from:github, as:theme
zplug zsh-users/zsh-syntax-highlighting
zplug plugins/git, from:oh-my-zsh
zplug plugins/history-substring-search, from:oh-my-zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

if ! zplug check --verbose; then zplug install ;fi

zplug load --verbose

export SPACESHIP_CHAR_SYMBOL="%(?.٩(*'ω'%)و.(*´'σ'%)?) < "
export SPACESHIP_DIR_TRUNC_REPO=false
