#!/usr/local/bin/zsh

alias drc="docker rm -f $1"
alias dri="docker rmi -f $1"
alias drca="docker rm -f $(docker ps -aq)"
alias dria="docker rmi -f $(docker images)"
alias rspec="bundle exec rspec"
