export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

export ZSH=/home/avl/.oh-my-zsh

ZSH_THEME="bureau"

pugins=(
  git
)

source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/plugins/git/git.plugin.zsh

source ~/.z.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

alias tmux="tmux -2"

export DROPBOX="~/Dropbox"
alias dev="cd $DROPBOX/Development/$1"
