call plug#begin('~/.vim/plugged')

" Base Plugins
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug '/usr/local/opt/fzf'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'janko/vim-test'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'rhysd/git-messenger.vim'

" Colorschemes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'

" Languages
"" Ruby
Plug 'tpope/vim-rails', { 'for': 'ruby'}
Plug 'ecomba/vim-ruby-refactoring', { 'for': 'ruby' }
"" Clojure
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Initialize plugin system
call plug#end()
