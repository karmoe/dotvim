if exists(':Files')
    map <silent> <Leader>p :Files<cr>
    map <silent> <C-p> :Files<cr>
    command! -bang -nargs=? -complete=dir Files
\       call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
endif

if exists(':Buffers')
    map <silent> <Leader>b :Buffers<cr>
endif

if exists(':Lines')
    map <silent> <Leader>l :Lines<cr>
endif

if exists(':GFiles')
    map <silent> <Leader>P :GFiles<cr>
endif

if exists(':BTags')
    map <silent> <Leader>t :BTags<cr>
endif

if exists(':Tags')
    map <silent> <Leader>T :Tags<cr>
endif
