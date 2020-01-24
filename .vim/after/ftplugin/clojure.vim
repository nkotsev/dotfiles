let g:rainbow_active = 1 

nnoremap <Space>ee :ConjureEvalCurrentForm<cr>
nnoremap <Space>eb :ConjureEvalBuffer<cr>
vnoremap <Space>ee :ConjureEvalSelection<cr>
nnoremap <Space>tt :ConjureRunTest<cr>
nnoremap <Space>er :ConjureEvalRootForm<cr>
nnoremap <Space>ta :ConjureRunAllTests<cr>
nnoremap <Space>e<Space> :ConjureRefresh all<cr>
nnoremap gd :ConjureDefinition<cr>

let g:conjure_default_mapings = v:true
let g:conjure_log_direction = "horizontal"
let g:conjure_log_blacklist = ["up", "ret", "ret-multiline", "load-file", "eval"]
