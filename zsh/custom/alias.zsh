# Source reload
alias reload.zsh="source ~/.zshrc"
# Square one
alias sq1="cd /home/mitogh/tribe/sq1/dev/docker/global"
alias sq1.start="sq1 && ./start.sh && cd -"
alias sq1.stop="sq1 && ./stop.sh && cd -"
alias sq1.reload="sq1.start && sq1.stop"
alias tribe="cd /home/mitogh/tribe"
# Git
alias gs="git status"

# tar
alias tarr="tar -pczf $1 $2"
alias untarr="tar -pxzf $1"

# Custom libraries
alias ls="exa"
alias cat="bat"
