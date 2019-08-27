" default vim remaps
command! W noautocmd w
command! Q noautocmd q
command! Wq noautocmd wq
command! WQ noautocmd wq
command! Wqa noautocmd wqa

" fzf
nnoremap <C-b> :Buffers<CR>
nnoremap <C-p> :Files<CR>

"vim-fugitive
nnoremap <leader>gs :Gstatus<CR><C-w>10_
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gw :Gwrite<CR>

"git-messenger
nnoremap <leader>gm :GitMessenger<CR>

"NERDTree
nnoremap <F2> :NERDTreeToggle<CR>

" vim-test
nnoremap <silent> <Leader>tt :TestFile<CR><C-w>10_
nnoremap <silent> <Leader>ts :TestNearest<CR><C-w>10_
nnoremap <silent> <Leader>ta :TestSuite<CR><C-w>1_

set langmap+=чявертъуиопшщасдфгхйклзьцжбнмЧЯВЕРТЪУИОПШЩАСДФГХЙКЛЗѝЦЖБНМ;`qwertyuiop[]asdfghjklzxcvbnm~QWERTYUIOP{}ASDFGHJKLZXCVBNM,ю\\,Ю\|,
