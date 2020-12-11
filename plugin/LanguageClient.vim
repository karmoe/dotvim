" Required for operations modifying multiple buffers like rename
set hidden

let g:LanguageClient_serverCommands = {
\   'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
\   'typescript': ['typescript-language-server', '--stdio'],
\   'javascript': ['javascript-typescript-stdio'],
\   'javascriptreact': ['javascript-typescript-stdio'],
\   'go': ['gopls'],
\ }
