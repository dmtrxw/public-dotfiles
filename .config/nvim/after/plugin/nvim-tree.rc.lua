local g = vim.g
g.nvim_tree_git_hl = 1
g.nvim_tree_disable_window_picker = 1
g.nvim_tree_show_icons = {
    git = 0,
    folders = 1,
    files = 1,
    folder_arrows = 1
}
g.nvim_tree_icons = {
    default = ""
}

vim.api.nvim_set_keymap('n', '<leader>fe', ':<C-u>NvimTreeToggle<CR>', { noremap = true, silent = true })

require'nvim-tree'.setup {
  system_open = {
    cmd = nil,
    args = {}
  },
  view = {
    width = 40,
    auto_resize = true
  },
  filters = {
    dotfiles = false,
    custom = { '.git', 'node_modules', '.cache', '.bin', '.DS_Store', 'build' },
  }
}

vim.cmd[[hi NvimTreeGitIgnored guifg=#737373]]
