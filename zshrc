export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
alias irb=pry
plugins=(git rvm tmux rails brew)
KEYTIMEOUT=1
alias tmux='tmux -2'

ssh-add -K ~/.ssh/github_rsa
ssh-add -K ~/.ssh/id_rsa_gitlab

stty -ixon
source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
  export EDITOR='nvim'
fi
# Compilation flags
export ARCHFLAGS="-arch x86_64"

export NVM_DIR="/Users/Norm/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export ROKU_DEV_TARGET=192.168.0.11
export ROKU_DEV_PASSWORD=abcd321
export ROKU_NDK_HOME=/Users/Norm/work/roku-ndk
export DIST_ROOTDIR=/Users/Norm/work/roku_dist
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
export PATH="$HOME/.jenv/bin:$PATH"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/MacGPG2/bin:/usr/local/bin:/bin:/usr/sbin:/sbin:/usr/bin:/opt/X11/bin:/usr/local/MacGPG2/bin:$PATH"
export DEVELOPMENT_TEAM_ID=GJ24C8864F

[ -s "/Users/Norm/.jabba/jabba.sh" ] && source "/Users/Norm/.jabba/jabba.sh"

export GOPATH=/Users/Norm/go_workspace
