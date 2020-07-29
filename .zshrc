ZSH_THEME="robbyrussell"

export ZSH=$HOME/.oh-my-zsh
export SHELL=/usr/local/bin/zsh
export UPDATE_ZSH_DAYS=7
export LANG=en_US.UTF-8

# Some homebrew forumlae install to /usr/local/sbin
export GOPATH=$HOME/go
export PATH=/usr/local/sbin:$PATH
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:./node_modules/.bin
export PATH=$PATH:./bin
export PATH=$PATH:$HOME/src/terraform
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

plugins=(git)

# Custom ZSH extensions
source $ZSH/oh-my-zsh.sh
source ~/.zsh/functions.sh
source ~/.zsh/aliases.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Trigger loadenv as soon as shell is available. Also triggered on directory change
loadenv
loadprepath

# Override default editors
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='code -w'
fi
export BUNDLER_EDITOR=code
