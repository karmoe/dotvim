function! PhpSyntaxOverride()
    " highlight keywords inside PHPDoc blocks
    hi! def link phpDocTags phpDefine
    hi! def link phpDocParam phpType
endfunction
augroup phpSyntaxOverride
    autocmd!
    autocmd FileType php call PhpSyntaxOverride()
augroup END
