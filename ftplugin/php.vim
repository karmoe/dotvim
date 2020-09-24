function! PhpSyntaxOverride()
    " highlight keywords inside PHPDoc blocks
    hi! def link phpDocTags phpDefine
    hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
    autocmd!
    autocmd FileType php call PhpSyntaxOverride()
augroup END

if !exists('g:phphelper#map_keys')
    let g:phphelper#map_keys = 1
endif

if g:phphelper#map_keys
    nnoremap <buffer> <leader>ggs :call phphelper#createGetterAndSetter()<cr>
endif

command! -nargs=0 PhpHelperCreateGetterAndSetter call phphelper#createGetterAndSetter()
