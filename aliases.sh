#!/bin/bash

alias aliases='nvim ~/.aliases'
alias vimrc='nvim ~/.vimrc'
alias nvimrc='nvim ~/.config/nvim/init.vim'
alias zshrc='nvim ~/.zshrc'
alias resource='source ~/.zshrc'
alias gs='git status'
alias pls='sudo'
alias vimplug='nvim ~/.vim/plugins.vim'
alias dev='cd ~/Development'
alias tmuxconf='vim ~/.tmux.conf'
alias dotfiles='cd ~/.dotfiles'
alias dc='docker-compose'
alias beke='bundle exec rake'
alias pyma='python3 manage.py'
alias :q='exit'
alias mux='tmuxinator'
alias poe='poetry'
alias poes='poetry shell'
alias poer='poetry run'
alias vglog="git log -p -40 | vim - -R -c 'set foldmethod=syntax'"
alias dps='docker ps'
alias ggpushf='git push origin $(git_current_branch) --force-with-lease'
alias sft-ssh='sft ssh $(sft list-servers | fzf | cut -f 1 -d" ")'
alias xit='exit'
alias k='kubectl'

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

csvr() {
  cat $1 | sed 's/,/,\ /g' | column -t -s, | less -S
}

md2html() {
  pandoc -c pandoc_github.css -s --metadata title="Rails overview" -f gfm -t html $1 -o $2
}
