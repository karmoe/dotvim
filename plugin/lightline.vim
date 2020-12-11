let g:lightline = {
    \ 'colorscheme': 'powerline',
    \ 'active': {
    \   'left': [
    \       [ 'mode', 'paste' ],
    \       [ 'gitbranch', 'readonly', 'filename', 'modified' ],
    \   ],
    \ },
    \ 'tabline': {
    \   'left': [ [ 'tabs' ] ],
    \   'right': [ [] ],
    \ },
    \ 'component_function': {
    \   'gitbranch': 'FugitiveHead',
    \ },
\ }

if $THEME == 'light'
    let g:lightline.colorscheme = 'PaperColor'
endif

if $THEME == 'ayu'
    let g:lightline.colorscheme = 'ayu_dark'
endif

if has("autocmd")
    " If using other BufWinEnter autocommands that apply to all files
    " the lightline might not get properly updated when switching between buffers.
    "
    " A workaround is to just call update() explicitly on BufWinEnter.
    "
    " See: https://github.com/itchyny/lightline.vim/issues/484
    autocmd BufWinEnter *.* silent call lightline#update()
end

let s:palette = g:lightline#colorscheme#powerline#palette
let s:palette.tabline.tabsel = [[ 'gray2', 'gray8' ]]
let s:palette.tabline.left = [[ 'gray6', 'gray1' ]]
let s:palette.tabline.middle = [[ 'gray2', 'gray1' ]]
let g:lightline#colorscheme#powerline#palette = lightline#colorscheme#fill(s:palette)
