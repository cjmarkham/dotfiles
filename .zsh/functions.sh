#!/usr/local/bin/zsh

loadenv() {
  if [[ -f Gemfile ]]; then; +env ruby; fi
  if [[ -f package.json ]]; then; +env node; fi
  if [[ $(ls -1 | grep '.go$' | wc -l | awk '{$1=$1};1') != '0' ]]; then; +env go; fi

  # Load everything when inside a vscode terminal
  if [[ "$TERM_PROGRAM" == "vscode" ]]; then
    +env ruby
    +env node
    +env go
  fi

  # Detect symlinked directories
  # This comes up quite a lot when working with Go
  SYMPATH=$(pwd)
  REALPATH=$(pwd -P)
  [[ "$SYMPATH" == "$REALPATH" ]] || echo "\x1b[33mYou have entered a symlink directory. Real path is \x1b[1m${REALPATH/$HOME/~}\x1b[0m"
}

update-dotfiles() {
  cd ~/.dotfiles
  git pull --rebase
  ~/.dotfiles/script/update
  source ~/.zshrc
  cd -
}

# Ensure our own paths are user first
function loadprepath() {
  PREPATH="./bin:./node_modules/.bin:"
  export PATH=$PREPATH${PATH/$PREPATH/}
}
