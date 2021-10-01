setlocal colorcolumn=120

iabbrev #f # frozen_string_literal: true
nnoremap <leader>rc :Dispatch! rubocop %<CR>

unlet b:current_syntax
syn include @SQL syntax/sql.vim
syn region sqlHeredoc start=/\v\<\<[-~]SQL/ end=/\vSQL/ keepend contains=@SQL
let b:current_syntax = "ruby"
