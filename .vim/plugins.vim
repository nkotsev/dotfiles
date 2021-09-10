call plug#begin('~/.vim/plugged')

" Base Plugins
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-rhubarb'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile \|\| read' }
Plug 'scrooloose/nerdtree'
Plug 'janko/vim-test'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'rhysd/git-messenger.vim'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-projectionist'
Plug 'bronson/vim-trailing-whitespace'
" Plug 'rottencandy/vimkubectl'
Plug 'nathanaelkane/vim-indent-guides'

" Colorschemes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'

" Languages
"" Ruby
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-bundler', { 'for': 'ruby' }
Plug 'ecomba/vim-ruby-refactoring', { 'for': 'ruby' }
Plug 'keith/rspec.vim', { 'for': 'ruby' }

"" Javascript
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

"" Clojure
Plug 'luochen1990/rainbow', { 'for': 'clojure' }
Plug 'guns/vim-sexp', { 'for': 'clojure' }
Plug 'tpope/vim-sexp-mappings-for-regular-people', { 'for': 'clojure' }
Plug 'tpope/vim-classpath', { 'for': 'clojure' }
Plug 'tpope/vim-salve', { 'for': 'clojure' }
Plug 'guns/vim-slamhound', { 'for': 'clojure' }

""" Fireplace
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'venantius/vim-cljfmt', { 'for': 'clojure' }
Plug 'venantius/vim-eastwood', { 'for': 'clojure' }

""" Iced
" Plug 'liquidz/vim-iced', {'for': 'clojure'}
" Plug 'liquidz/vim-iced-coc-source', {'for': 'clojure'}
" Plug 'liquidz/vim-iced-kaocha'

" Other filetypes
"" Markdown
Plug 'JamshedVesuna/vim-markdown-preview'
" Jsonnet
Plug 'google/vim-jsonnet'
"" CSV
Plug 'chrisbra/csv.vim', { 'for': 'csv' }
"" TOML
Plug 'cespare/vim-toml'
"" Avro
Plug 'gurpreetatwal/vim-avro'
"" Handlebards
Plug 'nono/vim-handlebars'

" /Languages
Plug 'chiedo/vim-case-convert'

" Registers window
Plug 'junegunn/vim-peekaboo'

" Play around with tags and LSP symbols
Plug 'liuchengxu/vista.vim'

" Initialize plugin system
call plug#end()
