let g:airline_powerline_fonts = 1
let g:airline_detect_whitespace = 0             " 0 = disabled, 1 = icon and message, 2 = icon only
let g:airline#extensions#tabline#enabled = 1    " display all buffers when there's only one tab open
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_splits = 0

if $THEME == 'light'
    let g:airline_theme = 'sol'
else
    let g:airline_theme = 'base16_default'
endif
