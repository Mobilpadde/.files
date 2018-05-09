export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$HOME/go/bin:$PATH"

export ZSH=/home/avl/.oh-my-zsh

ZSH_THEME="bureau"

pugins=(
  git
)

source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/plugins/git/git.plugin.zsh

source ~/z/z.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export DROPBOX="~/Dropbox"
alias dev="cd $DROPBOX/Development/$1"

alias x="mkdir $1 && cd $1"

export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"

export ANDROID_SDK_PATH=$HOME/Android/Sdk
export ANDROID_NDK_PATH=$HOME/Android/Sdk/ndk-bundle

export GPU_FORCE_64BIT_PTR=1
export GPU_USE_SYNC_OBJECTS=1
export GPU_MAX_ALLOC_PERCENT=100
export GPU_SINGLE_ALLOC_PERCENT=100
export GPU_MAX_HEAP_SIZE=100
