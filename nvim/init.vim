runtime ./plug.vim
runtime ./maps.vim

" Fuck 'em annoying bells
set belloff=all

set t_Co=256
syntax enable

if (has('termguicolors'))
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif

set number
let g:seoul256_background = 252
colorscheme seoul256-light
set background=light
set colorcolumn=80

set notagrelative

" Allow left arrow, right arrow, h and l to move to the previous/next line
set ww=<,>,h,l

" File format
set ff=unix

set nowrap

" Loads indent.vim. The result is when a file is edited its indent file is
" loaded
filetype plugin indent on
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4

runtime macros/matchit.vim
