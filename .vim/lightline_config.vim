" Shamelessly stolen from CaffeineViking/vimrc
    " LightLine Components: {
        function! LightLineModified()
            if &modified
                return "+"
            else
                return ""
            endif
        endfunction
        function! LightLineReadonly()
            if &readonly
                return ""
            else
                return ""
            endif
        endfunction
        function! LightLineFugitive()
            if exists("*fugitive#head")
                let branch = fugitive#head()
                return branch !=# '' ? ' '.branch : ' [No Head]'
            else
                return ' [No Head]'
            endif
            return ''
        endfunction
        function! LightLineFilename()
            return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
                 \ ('' != expand('%:f') ? expand('%:f') : '[No Name]') .
                 \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
        endfunction
    " }
    " A LightLine Theme
        let g:lightline = {
        \ 'colorscheme': 'dracula',
        \ 'active': {
        \  'left': [[ 'mode' ], [ 'fugitive' ], [ 'filename' ]],
        \  'right': [[ 'linenums' ], [ 'fileencoding', 'fileformat' ], [ 'filetype']]
        \ },
        \ 'inactive': {
        \  'left': [[ 'mode' ], [ 'fugitive' ], [ 'filename' ]],
        \  'right': [[ 'linenums' ], [ 'fileencoding', 'fileformat' ], [ 'filetype']]
        \ },
        \ 'component': {
        \   'linenums': '☰  %3l/%L:%-2c',
        \   'filetype': '%{&ft!=#""?&ft:"[No Type]"}'
        \ },
        \ 'component_function': {
        \   'fugitive': 'LightLineFugitive',
        \   'readonly': 'LightLineReadonly',
        \   'modified': 'LightLineModified',
        \   'filename': 'LightLineFilename',
        \ },
        \ 'separator':    { 'left': '', 'right': '' },
        \ 'subseparator': { 'left': '', 'right': '' }
        \ }
