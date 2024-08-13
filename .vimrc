set cursorline      " highlight line under cursor
set number          " use numbers inside files opened with vim 

syntax on           " turn on syntax highlighting
filetype on   

set expandtab       "Use softtabstop spaces instead of tab characters for indentation
set ts=2    
set shiftwidth=4    "Indent by 4 spaces when using >>, <<, == etc.
set softtabstop=4   "Indent by 4 spaces when pressing <TAB>

set autoindent      "Keep indentation from previous line
set smartindent     "Automatically inserts indentation in some cases
set cindent         "Like smartindent, but stricter and more customisab

" map leader
let mapleader = ","
nnoremap <leader>d yyp "duplicate line
nnoremap <leader>t :botright terminal ++rows=10<cr>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


"resize pane
" nnoremap + :res +5
" nnoremap _ :res -5
