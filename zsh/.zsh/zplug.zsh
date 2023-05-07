export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "spaceship-prompt/spaceship-prompt", use:spaceship.zsh, from:github, as:theme
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug plugins/git, from:oh-my-zsh
zplug zsh-users/zsh-history-substring-search

if ! zplug check --verbose; then zplug install ;fi

zplug load --verbose

export SPACESHIP_CHAR_SYMBOL_SUCCESS="٩(*'ω'%)و < "
export SPACESHIP_CHAR_SYMBOL_FAILURE="(*´'σ'%)? < "
export SPACESHIP_DIR_TRUNC_REPO=false
export SPACESHIP_GCLOUD_SHOW=false
