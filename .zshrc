# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Start tmux on zsh startup
export ZSH_TMUX_AUTOSTART=true
export ZSH_TMUX_AUTOSTART_ONCE=false
export ZSH_TMUX_AUTOCONNECT=true
export ZSH_TMUX_AUTOQUIT=false

# Path to your oh-my-zsh installation.
export ZSH="/Users/nikolay.kotzev/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=3

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
  brew
  bundler
  django
  docker
  git
  github
  poetry
  python
  rails
  rake
  rbenv
  redis-cli
  ruby
  tmux
  vi-mode
  z
)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# Source your personal aliases
source ~/.aliases
[ -f ~/.aliases.local ] && source ~/.aliases.local
[ -f ~/.aws_functions ] && source ~/.aws_functions

# Use vim binding in zsh
bindkey -v

# Bind reverse search
bindkey '^R' history-incremental-search-backward

# fzf stuff
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Fix locale related errors
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8



# Some default configurations
if `which nvim > /dev/null`; then
  export EDITOR="nvim"
else
  export EDITOR="vim"
fi

# rbenv initialization
eval "$(rbenv init -)"

# Term colors
export TERM=screen-256color

# Additions to path
export PATH="$PATH:$HOME/.scripts:$HOME/bin"
export PATH="$HOME/.poetry/bin:$PATH"
export PATH="$PATH:$HOME/Library/Python/3.8/bin"
export PATH="$PATH:$HOME/.vim/plugged/vim-iced/bin"

# Base git branch for reviews
export REVIEW_BASE=master


# Init pyenv
# eval "$(pyenv init -)"

# Load zplug
# source ~/.zplug.zsh

[ -f ~/.secrets/homebrew-personal-token-v2 ] && export HOMEBREW_GITHUB_API_TOKEN=$(cat ~/.secrets/homebrew-personal-token-v2)
[ -f ~/.secrets/homebrew-personal-token-v2 ] && export GITHUB_TOKEN=$(cat ~/.secrets/homebrew-personal-token-v2)
[ -f ~/.secrets/modulr ] && source ~/.secrets/modulr

# Multiline editing via vim with "v" binding
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line


# Disabled because it is slowing shell startup significantly
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --no-ignore-vcs'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# # Load up zoxide
# eval "$(zoxide init zsh)"

# Load up kubectl autocompletions
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)

eval "$(jump shell)" # Initialize jump

export MANPAGER='nvim +Man!'

# Java version manager initialization
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Confluent platform location
export CONFLUENT_HOME="/Users/nikolay.kotzev/confluent/bin/confluent-6.2.1"

# Try to fix GPG's tty probles
export GPG_TTY=$(tty)
export PATH="/usr/local/opt/python@3.10/bin:$PATH"

# Add new poetry path
export PATH="/Users/nikolay.kotzev/.local/bin:$PATH"

# Pyenv setup
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
