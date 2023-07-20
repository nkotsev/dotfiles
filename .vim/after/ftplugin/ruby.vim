setlocal colorcolumn=120

iabbrev #f # frozen_string_literal: true
nnoremap <leader>rc :Dispatch! rubocop %<CR>

syn include @SQL syntax/sql.vim
syn region sqlHeredoc start=/\v\<\<[-~]SQL/ end=/\vSQL/ keepend contains=@SQL
let b:current_syntax = "ruby"
" set tabstop=4
set list
set listchars=tab:>-
