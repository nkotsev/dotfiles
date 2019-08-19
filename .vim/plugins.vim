call plug#begin('~/.vim/plugged')

" Base Plugins
Plug 'junegunn/fzf'
Plug '/usr/local/opt/fzf'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'

" Colorschemes
Plug 'dracula/vim', { 'as': 'dracula' }

" Languages
"" Clojure
Plug 'tpope/vim-fireplace'

" Initialize plugin system
call plug#end()
