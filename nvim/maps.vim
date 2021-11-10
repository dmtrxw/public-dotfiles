" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

" Move around splits
nmap <Space> <C-w>w
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

" Copy
vnoremap <leader>c "+y
nnoremap <leader>c "+y

" Cut
vnoremap <leader>x "+d
nnoremap <leader>x "+d

" Paste
nnoremap <leader>p "+p
nnoremap <leader>P "+P
