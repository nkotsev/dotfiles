" default vim remaps
command! W noautocmd w
command! Q noautocmd q
command! Wq noautocmd wq
command! WQ noautocmd wq
command! Wqa noautocmd wqa

" fzf
nnoremap <C-b> :Buffers<CR>
nnoremap <C-p> :Files<CR>

"Unbind ex-mode
map Q <Nop>

"vim-fugitive
nnoremap <leader>gs :Git<CR><C-w>10_
nnoremap <leader>gb :G blame<CR>
nnoremap <leader>gd :G diff<CR>
nnoremap <leader>gw :Gwrite<CR>
nnoremap <leader>g! :G --paginate<CR>
nnoremap <leader>gh :GBrowse<CR>
vnoremap <leader>gh :GBrowse<CR>

"git-messenger
nnoremap <leader>gm :GitMessenger<CR>

"NERDTree
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <leader>ntf :NERDTreeFind<CR>

" vim-test
if has('nvim')
  nnoremap <silent> <Leader>tt :TestFile<CR><C-\><C-N><C-W>10_a
  nnoremap <silent> <Leader>ts :TestNearest<CR><C-\><C-N><C-W>10_a
  nnoremap <silent> <Leader>ta :TestSuite<CR><C-\><C-N><C-W>10_a
else
  nnoremap <silent> <Leader>tt :TestFile<CR><C-w>10_
  nnoremap <silent> <Leader>ts :TestNearest<CR><C-w>10_
  nnoremap <silent> <Leader>ta :TestSuite<CR><C-w>1_
endif

if exists(':GitGutterNextHunk')
  nnoremap <silent> ]h <Plug>(GitGutterNextHunk)
  nnoremap <silent> [h <Plug>(GitGutterPrevHunk)
endif

set langmap+=чявертъуиопшщасдфгхйклзьцжбнмЧЯВЕРТЪУИОПШЩАСДФГХЙКЛЗѝЦЖБНМ;`qwertyuiop[]asdfghjklzxcvbnm~QWERTYUIOP{}ASDFGHJKLZXCVBNM,ю\\,Ю\|,

"vim-markdown-preview
let vim_markdown_preview_hotkey='<C-M>'

" Test for .personal.todo.md
nnoremap <leader>todo :edit .personal.todo.md<CR>

" " Kaocha
" autocmd FileType clojure nmap <silent><buffer> <Leader>ktt <Plug>(iced_kaocha_test_under_cursor)
" autocmd FileType clojure nmap <silent><buffer> <Leader>ktn <Plug>(iced_kaocha_test_ns)
" autocmd FileType clojure nmap <silent><buffer> <Leader>ktr <Plug>(iced_kaocha_test_redo)
" autocmd FileType clojure nmap <silent><buffer> <Leader>ktl <Plug>(iced_kaocha_test_rerun_last)

nmap <Leader>gg  :call CocAction('jumpDefinition', 'vsp')<CR>

" Diff bindings
nnoremap <Leader>dt :diffthis<CR>
nnoremap <Leader>do :diffoff<CR>
nnoremap <Leader>da :diffoff!<CR>
