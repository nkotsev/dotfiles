let g:rainbow_active = 1 
nnoremap <Space>r :RainbowToggle<cr>

if has('nvim')
  nnoremap <buffer> <Space>ee :ConjureEvalCurrentForm<cr>
  nnoremap <buffer> <Space>eb :ConjureEvalBuffer<CR>
  vnoremap <buffer> <Space>ee :ConjureEvalSelection<CR>
  nnoremap <buffer> <Space>tt :ConjureRunTest<CR>
  nnoremap <buffer> <Space>er :ConjureEvalRootForm<CR>
  nnoremap <buffer> <Space>ta :ConjureRunAllTests<CR>
  nnoremap <buffer> <Space>e<Space> :ConjureRefresh all<CR>
  nnoremap <buffer> <Space><Space> :ConjureToggleLog<CR>
  nnoremap <buffer> gd :ConjureDefinition<CR>
  nnoremap <buffer> <Space>cu :ConjureUp<CR>

  let g:conjure_default_mapings = v:true
  let g:conjure_log_direction = "horizontal"
  let g:conjure_log_blacklist = ["up", "ret", "ret-multiline", "load-file", "eval"]
  let g:conjure_log_size_small = 20
  let g:conjure_log_size_big = 20
  let g:conjure_log_auto_close = v:false

  setlocal colorcolumn=80,120

  " Exracted from https://github.com/snoe/dotfiles/blob/master/home/.vimrc#L249
  function! LocalClojureExpand(exp) abort
      let l:result = expand(a:exp)
      return l:result ==# '' ? '' : "file://" . l:result
  endfunction

  " Highlight symbol under cursor on CursorHold      
  " autocmd CursorHold * silent call CocActionAsync('highlight')
  " " vmap <leader>f <Plug>(coc-format-selected)
  " " nmap <leader>f <Plug>(coc-format-selected)

  nnoremap <buffer> <silent> crcc :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'cycle-coll', 'arguments': [LocalClojureExpand('%:p'), line('.') - 1, col('.') - 1]})<CR>
  nnoremap <buffer> <silent> crth :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'thread-first', 'arguments': [LocalClojureExpand('%:p'), line('.') - 1, col('.') - 1]})<CR>
  nnoremap <buffer> <silent> crtt :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'thread-last', 'arguments': [LocalClojureExpand('%:p'), line('.') - 1, col('.') - 1]})<CR>
  nnoremap <buffer> <silent> crtf :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'thread-first-all', 'arguments': [LocalClojureExpand('%:p'), line('.') - 1, col('.') - 1]})<CR>
  nnoremap <buffer> <silent> crtl :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'thread-last-all', 'arguments': [LocalClojureExpand('%:p'), line('.') - 1, col('.') - 1]})<CR>
  nnoremap <buffer> <silent> cruw :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'unwind-thread', 'arguments': [LocalClojureExpand('%:p'), line('.') - 1, col('.') - 1]})<CR>
  nnoremap <buffer> <silent> crua :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'unwind-all', 'arguments': [LocalClojureExpand('%:p'), line('.') - 1, col('.') - 1]})<CR>
  nnoremap <buffer> <silent> crml :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'move-to-let', 'arguments': [LocalClojureExpand('%:p'), line('.') - 1, col('.') - 1, input('Binding name: ')]})<CR>
  nnoremap <buffer> <silent> cril :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'introduce-let', 'arguments': [LocalClojureExpand('%:p'), line('.') - 1, col('.') - 1, input('Binding name: ')]})<CR>
  nnoremap <buffer> <silent> crel :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'expand-let', 'arguments': [LocalClojureExpand('%:p'), line('.') - 1, col('.') - 1]})<CR>
  nnoremap <buffer> <silent> cram :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'add-missing-libspec', 'arguments': [LocalClojureExpand('%:p'), line('.') - 1, col('.') - 1]})<CR>
  nnoremap <buffer> <silent> crcn :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'clean-ns', 'arguments': [LocalClojureExpand('%:p'), line('.') - 1, col('.') - 1]})<CR>
  nnoremap <buffer> <silent> cref :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'extract-function', 'arguments': [LocalClojureExpand('%:p'), line('.') - 1, col('.') - 1, input('Function name: ')]})<CR>
endif
