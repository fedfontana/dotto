set nu rnu
syntax on
set nobackup nowritebackup
set noswapfile
set tabstop=4		" number of visual spaces per TAB
set softtabstop=4	" number of spaces in TAB when editing
set shiftwidth=4	" number of spaces to use for autoindent
"set expandtab		 "tabs are space
set autoindent
set copyindent
set wildmenu
set mouse=a

"nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
Plug 'dikiaap/minimalist'
Plug 'sickill/vim-monokai'

call plug#end()

colorscheme minimalist
set background=dark


"let g:airline_theme='fruit punch'

"colorscheme carbonized-dark
"let g:lightline = {
"      \ 'colorscheme': 'carbonized_dark',
"      \ }
