version 6.0
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=indent,eol,start
set fileencodings=utf-8,latin1
set formatoptions=tcql
set helplang=en
set history=150
set hlsearch
set ruler
set viminfo='20,\"50
set tabstop=2
set nowrap
set laststatus=2
set dictionary=/usr/share/dict/words
" set autoindent
set shiftwidth=2
set shiftround
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set noendofline binary
filetype plugin on
syntax on
autocmd FileType * set noexpandtab
autocmd FileType *-src set expandtab
autocmd FileType php set expandtab
autocmd FileType js set expandtab
" vim: set ft=vim :
