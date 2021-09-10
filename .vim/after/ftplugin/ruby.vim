setlocal colorcolumn=120

iabbrev #f # frozen_string_literal: true
nnoremap <leader>rc :Dispatch! rubocop %<CR>
