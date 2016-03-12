# Path to your oh-my-zsh installation.
export ZSH=/Users/Mitogh/.oh-my-zsh

ZSH_THEME="pygmalion"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git node npm bower brew osx extract z)

# User configuration
NPM_PACKAGES="${HOME}/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"

source $ZSH/oh-my-zsh.sh

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
