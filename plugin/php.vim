" Disable embedding HTML in PHP -- significantly speeds up syntax highlighting
let php_html_load = 0

" Set to 1 to include the dollar sign $ as part of the highlighting group for a PHP variable
let php_var_selector_is_identifier = 0

" Set to a falsy value (e.g., 0) to disable SQL syntax in PHP.
" Doing so may yield moderate speed-ups of syntax highlighting.
let php_sql_query = 1
let php_sql_heredoc = 1
let php_sql_nowdoc = 1
