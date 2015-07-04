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
set tabstop=4
set nowrap
set laststatus=2
set dictionary=/usr/share/dict/words
" set autoindent
set shiftwidth=2
set shiftround
set statusline=[%n]\ %<%F\ \ \ [%M%R%H%W%Y][%{&ff}]\ [ASC=\%03.3b]\ [HEX=\%02.2B]\ \ %=\ line:%l/%L\ col:%c\ \ \ %p%%\ \ \ @%{strftime(\"%H:%M:%S\")}
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set noendofline binary
filetype plugin on
syntax on
autocmd FileType * set noexpandtab
autocmd FileType *-src set expandtab
autocmd FileType php set expandtab
autocmd FileType js set expandtab
autocmd FileType html set expandtab
autocmd FileType sql set tabstop=4 shiftwidth=4 expandtab
" vim: set ft=vim :
