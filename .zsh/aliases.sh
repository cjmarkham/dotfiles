#!/usr/local/bin/zsh

alias drc="docker rm -f $1"
alias dri="docker rmi -f $1"
alias drca="docker rm -f $(docker ps -aq)"
alias dria="docker rmi -f $(docker images)"
alias kcred="export AWS_PROFILE=dev-eks && kubectl"
alias kcblue="export AWS_PROFILE=staging-blue-readonly && kubectl"
alias j11="export JAVA_HOME=`/usr/libexec/java_home -v 11`; java -version"
alias j13="export JAVA_HOME=`/usr/libexec/java_home -v 13`; java -version"
alias rspec="bundle exec rspec"
