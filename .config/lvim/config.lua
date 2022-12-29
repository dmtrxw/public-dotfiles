-- general
lvim.log.level = "warn"
lvim.format_on_save = false
lvim.colorscheme = "tokyonight"

vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 4 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 4 -- insert 4 spaces for a tab
vim.opt.clipboard = ""
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
vim.opt.showtabline = 0 -- hide tabs

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"

-- Copy
vim.cmd("vnoremap \\c \"+y")
vim.cmd("nnoremap \\c \"+y")

-- Cut
vim.cmd("vnoremap \\x \"+d")
vim.cmd("nnoremap \\x \"+d")

-- Paste
vim.cmd("nnoremap \\p \"+p")
vim.cmd("nnoremap \\P \"+P")

lvim.builtin.alpha.active = false
lvim.builtin.bufferline.active = false
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.cmp.experimental.ghost_text = false
lvim.builtin.cmp.completion.autocomplete = false
lvim.builtin.cmp.completion.completeopt = 'menu,menuone,noinsert'

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
    "bash",
    "c",
    "javascript",
    "json",
    "lua",
    "python",
    "typescript",
    "tsx",
    "css",
    "rust",
    "java",
    "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
        command = "prettier",
        ---@usage arguments to pass to the formatter
        -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
        extra_args = {},
        ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
        filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
    },
}

-- Additional Plugins
lvim.plugins = {
    { "morhetz/gruvbox" },
    { "folke/tokyonight.nvim" },
    { "mattn/emmet-vim" }
}
