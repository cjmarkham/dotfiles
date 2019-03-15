#!/usr/local/bin/zsh

alias gs="git status -s"
alias gd="git diff"
alias gf="git fetch --all --prune"
alias gfo="git fetch origin --prune"
alias gb="git --no-pager branch -vv"
alias gba="git --no-pager branch -avv"

# https://marcqualie.com/2015/08/remove-deleted-git-branches
alias git-branch-cleanup="git --no-pager branch -vv | grep ': gone]' | awk '{print $1}' | xargs echo"
