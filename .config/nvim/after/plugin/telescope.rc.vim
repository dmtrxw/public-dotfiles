if !exists('g:loaded_telescope') | finish | endif

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files({
            \ find_command = { 'rg', '--files', '--iglob', '!.git', '--iglob', '!build', '--hidden' }
            \ })<CR>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep({ debounce = 100 })<CR>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<CR>
