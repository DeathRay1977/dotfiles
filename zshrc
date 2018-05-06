export ZSH=/Users/nfa02/.oh-my-zsh
ZSH_THEME="agnoster"
alias irb=pry
plugins=(git rvm tmux rails brew)
KEYTIMEOUT=1
alias tmux='tmux -2'

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/MacGPG2/bin:/usr/local/bin:/bin:/usr/sbin:/sbin:/usr/bin:/opt/X11/bin:/usr/local/MacGPG2/bin:/Users/nfa02/.rvm/bin:/Users/nfa02/.rvm/bin:$PATH"
stty -ixon
source $ZSH/oh-my-zsh.sh
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
  export EDITOR='nvim'
fi
# Compilation flags
export ARCHFLAGS="-arch x86_64"

export NVM_DIR="/Users/nfa02/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export ROKU_DEV_TARGET=192.168.0.35
export ROKU_DEV_PASSWORD=abcd321
export MANIFEST_OOGWAY_CLIENT=client
export MANIFEST_OOGWAY_SECRET=secret
export MANIFEST_HMAC_CLIENT=IE-NOWTV-ROKU-v1
export MANIFEST_HMAC_SECRET_PROD=Pv9HkaVzyGKAAM46q2K7JKN7bkW6aX7EYWpY6QB9UMvfuu
export MANIFEST_HMAC_SECRET_NON_PROD=ZrwgsxNQft
export MANIFEST_HMAC_SECRET=$MANIFEST_HMAC_SECRET_PROD
export LOCAL_HTTP_SERVICE=192.168.0.33:4567
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="/usr/local/sbin:$PATH"
export PATH="./node_modules/.bin:$PATH"
export PATH="/usr/local/lib/python2.7/site-packages:$PATH"
