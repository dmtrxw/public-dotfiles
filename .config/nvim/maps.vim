" Split window
nmap <C-s>s :split<Return><C-w>w
nmap <C-s>v :vsplit<Return><C-w>w

" Move around splits
nmap <Space> <C-w>w
map <C-s><left> <C-w>h
map <C-s><up> <C-w>k
map <C-s><down> <C-w>j
map <C-s><right> <C-w>l
map <C-s>h <C-w>h
map <C-s>k <C-w>k
map <C-s>j <C-w>j
map <C-s>l <C-w>l

" Copy
vnoremap <leader>c "+y
nnoremap <leader>c "+y

" Cut
vnoremap <leader>x "+d
nnoremap <leader>x "+d

" Paste
nnoremap <leader>p "+p
nnoremap <leader>P "+P
