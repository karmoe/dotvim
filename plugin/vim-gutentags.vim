if filereadable("/usr/bin/ctags")
    let g:gutentags_ctags_executable = "/usr/bin/ctags"
endif
if filereadable("/usr/local/bin/ctags")
    let g:gutentags_ctags_executable = "/usr/local/bin/ctags"
endif
let g:gutentags_ctags_exclude = ['*.css', '*.html', 'node_modules']
