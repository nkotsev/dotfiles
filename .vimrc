set nocompatible

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent
set autoindent

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use two spaces instead of tabs
set tabstop=2 shiftwidth=2 expandtab
"
" Use line numbers
set number

" Remove wrap
set nowrap

" Enable syntax highlighting
syntax on

" Add fzf to vim's runtime path in order to use it for junegunn/fzf
set rtp+=~/.fzf/bin/fzf

" Toggle paste mode, while in insert
set pastetoggle=<F2>

" Use guicolors in iterm
if $TERM_PROGRAM == 'iTerm'
  set termguicolors
endif

if $TERM == 'xterm-256color'
  set termguicolors
endif

" Use space as leader
noremap <Space> <Nop>
let mapleader=" "


" Source plugins
source ~/.vim/plugins.vim

" Source keybindings
source ~/.vim/bindings.vim

" Lightline configuration
source ~/.vim/lightline_config.vim

" Source coc.nvim configuration
source ~/.vim/coc_config.vim

" Source abbreviations
source ~/.vim/abbreviations.vim

colorscheme dracula

" Set vim-test strategy
let test#strategy = "vimterminal"
" Add fzf to runtime path
set rtp+=~/.fzf
