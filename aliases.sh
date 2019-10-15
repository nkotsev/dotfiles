#!/bin/bash

alias aliases='vim ~/.aliases'
alias vimrc='vim ~/.vimrc'
alias zshrc='vim ~/.zshrc'
alias resource='source ~/.zshrc'
alias gs='git status'
alias pls='sudo'
alias vimplug='vim ~/.vim/plugins.vim'
alias dev='cd ~/Development'
alias tmuxconf='vim ~/.tmux.conf'
alias dotfiles='cd ~/.dotfiles'
alias dc='docker-compose'
alias beke='bundle exec rake'
alias pyma='python3 manage.py'
alias :q='exit'

# Functions
# fbr - fuzzy branch change
fbr() {
  local branches branch
  branches=$(git branch --all | grep -v HEAD) &&
  branch=$(echo "$branches" |
           fzf-tmux -d $(( 2 + $(wc -l <<< "$branches") )) +m) &&
  git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}

# fd - fuzzy cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

# peek - open small tmux split with a file
peek() {
  tmux split-window -p 25 "$EDITOR" "$@"
}
