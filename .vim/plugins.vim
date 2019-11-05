call plug#begin('~/.vim/plugged')

" Base Plugins
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug '/usr/local/opt/fzf'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-rhubarb'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'janko/vim-test'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'rhysd/git-messenger.vim'
Plug 'tpope/vim-dispatch'

" Colorschemes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'

" Languages
"" Ruby
Plug 'tpope/vim-rails', { 'for': 'ruby'}
Plug 'ecomba/vim-ruby-refactoring', { 'for': 'ruby' }
Plug 'keith/rspec.vim'
"" Clojure
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" Initialize plugin system
call plug#end()
