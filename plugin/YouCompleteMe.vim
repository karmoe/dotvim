set completeopt=menuone,popuphidden

" Whether to show documentation in a popup at the cursor location after a delay.
" If set to "CursorHold", the popup is displayed after `updatetime` milliseconds.
" If set to an empty string, the popup is not automatically displayed.
let g:ycm_auto_hover = ""

" While ? is by default mapped to reverse search, it's not too useful for me
" personally. Remap it as a nice mnemonic shortcut to display contextual documentation
" in a popup.
nmap ? <plug>(YCMHover)

" Use syntax highlighting in popups for supported languages
augroup MyYCMCustom
    autocmd!
    
    autocmd FileType go,c,cpp,php,javascript,typescript,rust let b:ycm_hover = {
     \ 'command': 'GetDoc',
     \ 'syntax': &filetype
     \ }
augroup END
