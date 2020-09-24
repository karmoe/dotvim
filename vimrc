set number
set encoding=utf8
set ffs=unix,dos

" Use comma as leader character instead of the default '\', since the latter
" is annoying to hit on a non-US keyboard
let mapleader=","

" Syntax highlighting
syntax on
" Always show the status line
set laststatus=2
" Show the line and column number of cursor position
set ruler
" Show the search pattern matches immediately, while typing
set incsearch
" Highlight all search pattern matches
set hlsearch
" Switch away from modified buffers without necessarily saving them
set hidden
" Allow backspacing and <C-W> over autoindent, linebreaks and start of insert
set backspace=indent,eol,start

" ------------------------- Indenting -------------------------
" Copy indent from current line when starting a new line
set autoindent
" Automatic C program indenting
set cindent

" ------------------------- Tabs and spaces -------------------------
" Number of spaces that a <Tab> character is visually represented with
set tabstop=4
" Number of spaces that a <Tab> counts for while performing editing operations
set softtabstop=4
" Number of spaces to use for each step of (auto)indent
set shiftwidth=4
" Insert spaces instead of literal <Tab> characters
set expandtab

" Do case-insensitive matching when pattern contains only lowercase letters
set smartcase
" Minimal number of screen lines to keep above and below the cursor
set scrolloff=3
" Yank and paste without prepending "* to commands
set clipboard+=unnamed
" Always insert only one space when joining lines
set nojoinspaces
" Little bit fancier listchars
set listchars=eol:¬,tab:\→\ ,trail:~,extends:>,precedes:<,nbsp:•
" Show visual indicators for tabs, spaces and EOL characters
" set list

" Time (ms) before swap file is written to disk when idle
set updatetime=1000
" Automatically read the file again if the file has changed outside of Vim
set autoread

" ------------------------- Swap and backup files -------------------------
" Set directory for backup files
set backupdir=~/.vim/backup
" Delete backup file after file has been successfully written
set nobackup
" Set directory for swap files
set directory=~/.vim/swap

" Treat :W as :w since this is a common typo
cnoreabbrev W w

" ------------------------- Navigation -------------------------
" Swap ' and ` so 'a goes to the line *and* column marked with ma
nnoremap ' `
nnoremap ` '
" Move by bigger jumps when holding CTRL
nnoremap <C-j> 10j
nnoremap <C-k> 10k
vnoremap <C-j> 10j
vnoremap <C-k> 10k
" move between word-wrapped lines with j and k
nnoremap j gj
nnoremap k gk
" Map 'edit alternate file' to something more convenient.
" I would like to map it to <C-õ>, but it seems vim doesn't like umlaut
" characters in control codes.
nnoremap <leader>õ <C-^>

" Quickly clear highlighted matches
map <silent> <Leader><Leader> :nohl<CR>
" Automatically repeat the last visual selection after indenting
vnoremap < <gv
vnoremap > >gv

" ------------------------- Command-line completion options -------------------------
" Character that starts wildcard expansion
set wildchar=<Tab>
" Enhanced mode for command-line completion
set wildmenu
set wildmode=list:longest,full

" ------------------------- OS X specific configuration -------------------------
if has('mac')
    " Macbook's touch bar is unusable - provide an alternative to <Esc>
    inoremap jj <Esc>
endif

if has("autocmd")
    augroup vimrcEx
    au!

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    " Also don't do it when the mark is in the first line, that is the default
    " position when opening a file.
    autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
    augroup END

    " Save and load view files automatically when exiting/entering buffers
    autocmd BufWinLeave *.* mkview
    autocmd BufWinEnter *.* silent loadview

    " Check if any buffers were changed outside of Vim when idle -- not having
    " pressed a key for the time specified by `updatetime`.
    au CursorHold * checktime
end

" ------------------------- Plugins -------------------------
call plug#begin('~/.vim/bundle')
    " ---------- Interface ----------
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " ---------- Editing functionality ----------
    Plug 'editorconfig/editorconfig-vim'
    Plug 'tpope/vim-commentary'
    Plug 'dense-analysis/ale'

    " ---------- Syntax highlighting ----------
    Plug 'ekalinin/Dockerfile.vim', { 'for': 'Dockerfile' }
    Plug 'StanAngeloff/php.vim', { 'for': 'php' }

    " ---------- Color schemes ----------
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'morhetz/gruvbox'
call plug#end()

if $THEME == 'light'
    set background=light
    colorscheme PaperColor
else
    set background=dark
    colorscheme gruvbox
endif
