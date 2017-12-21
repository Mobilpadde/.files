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

export DROPBOX="~/Dropbox"
alias dev="cd $DROPBOX/Development/$1"

export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"

alias tmux="tmux -2"
alias ttm="tmux a -t"
alias stm="tmux new -s"
alias ltm="tmux ls"
