# Path to your oh-my-zsh installation.
export ZSH=/Users/nfa02/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
alias irb=pry
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git rvm tmux rails brew)

# User configuration
KEYTIMEOUT=1

export PATH=$PATH:"/Users/Norm/.rvm/gems/ruby-2.2.2@sixdegrees/bin:/Users/Norm/.rvm/gems/ruby-2.2.2@global/bin:/Users/Norm/.rvm/rubies/ruby-2.2.2/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/MacGPG2/bin:/usr/local/bin:/bin:/usr/sbin:/sbin:/usr/bin:/opt/X11/bin:/usr/local/MacGPG2/bin:/Users/Norm/.rvm/bin:/Applications/Racket v6.2/bin:/Users/Norm/.rvm/bin"
export RUBYMOTION_ANDROID_SDK=/Users/Norm/.rubymotion-android/sdk
export RUBYMOTION_ANDROID_NDK=/Users/Norm/.rubymotion-android/ndk
# export MANPATH="/usr/local/man:$MANPATH"
stty -ixon
source $ZSH/oh-my-zsh.sh
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# . `brew --prefix`/etc/profile.d/z.sh
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
  export EDITOR='nvim'
fi
# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR="/Users/NFA02/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export ROKU_DEV_TARGET=192.168.0.29
export ROKU_DEV_PASSWORD=abcd321
export MANIFEST_TITLE="Now TV Sky IE"
export MANIFEST_MAJOR_VERSION=0
export MANIFEST_MINOR_VERSION=1
export MINOR_VERSION=$MANIFEST_MINOR_VERSION
export MANIFEST_OOGWAY_CLIENT=client
export MANIFEST_OOGWAY_SECRET=secret
export PRODUCTION_BUILD=false
export NOWTV_CONFIG_SERVER_IP=192.168.0.26
export MANIFEST_HMAC_CLIENT=IE-NOWTV-ROKU-v1
export MANIFEST_HMAC_SECRET_PROD=Pv9HkaVzyGKAAM46q2K7JKN7bkW6aX7EYWpY6QB9UMvfuu
export MANIFEST_HMAC_SECRET_NON_PROD=ZrwgsxNQft
export MANIFEST_HMAC_SECRET=$MANIFEST_HMAC_SECRET_PROD
export MANIFEST_CONFIG_URI=http://$NOWTV_CONFIG_SERVER_IP:4567/NowTV-NowTV-Roku/$NOWTV_CONFIG_VERSION/${country}-NowTV-NowTV-Roku-${env_name}/config.json
export LOCAL_HTTP_SERVICE=192.168.0.26:4567
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="./node_modules/.bin":$PATH"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
