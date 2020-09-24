let g:ale_lint_on_save = 1 " lint when saving file?
let g:ale_lint_on_enter = 0 " lint when opening a file?
let g:ale_lint_on_text_changed = "never" " lint when chaning text? (always|insert|normal|never)
let g:ale_lint_delay = 1000 " wait before starting linting after text change

let g:ale_linters = {
\   'php': ['php', 'phpcs'],
\   'js': ['eslint'],
\}
let g:ale_php_phpcs_standard = '/Users/karmoesinurm/share/php/CodeSniffer/Standard/Pipedrive.xml'

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
