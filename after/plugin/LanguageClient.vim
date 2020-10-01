if (exists(':LanguageClientStart'))
    nmap <silent> gd <Plug>(lcn-definition)
    nmap <silent> ü <Plug>(lcn-definition)

    nmap <silent> õ <Plug>(lcn-references)

    nmap <silent>K <Plug>(lcn-hover)
    nmap <C-L> <Plug>(lcn-menu)
endif
