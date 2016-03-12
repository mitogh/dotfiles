# Path to your oh-my-zsh installation.
export ZSH=/Users/Mitogh/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pygmalion"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
#export UPDATE_ZSH_DAYS=1

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

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
plugins=(git cloudapp node npm bower brew osx extract z)

# User configuration

#export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
#export PATH="$HOME/.node/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"
#export PATH=/usr/local/share/npm/bin:$PATHk
NPM_PACKAGES="${HOME}/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
#export PATH=/usr/local/share/npm/bin:$PATH

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# Alias for generate reports
alias report='git log --no-merges --format="[Commit: %h] %s" --author="mitogh@gmail.com" --reverse -30'
# Custom GIT alias
alias gp="git push origin master"
# Git status more shorter
alias gs="git status"
# Open the iOS Simulator
alias simulator="open /Applications/Xcode.app/Contents/Developer/Applications/iOS\ Simulator.app"
alias www="cd ~/Documents/vagrant-local/www/"

source ~/.gulp-autocompletion-zsh/gulp-autocompletion.zsh

function _composer {
  local -x COMP_LINE="$words"
  local -x COMP_POINT
  (( COMP_POINT = ${#${(j. .)words[1,CURRENT]}} ))


  local composer_dir=$COMPOSER_HOME
  if [ -z "$composer_dir" ]; then
    composer_dir=$HOME/.composer
  fi

  local RESULT STATUS
  local -x COMPOSER_CWD=`pwd`
  RESULT=("${(@f)$( cd $composer_dir && composer depends _completion )}")
  STATUS=$?;

  if [ $STATUS -ne 0 ]; then
    echo $RESULT;
    return $?;
  fi;

  compadd -- $RESULT
};
compdef _composer composer;
source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
