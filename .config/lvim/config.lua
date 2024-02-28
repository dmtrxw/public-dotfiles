lvim.log.level = "warn"
lvim.format_on_save = false
lvim.colorscheme = "tokyonight-night"

vim.opt.expandtab = true  -- convert tabs to spaces
vim.opt.shiftwidth = 4    -- the number of spaces inserted for each indentation
vim.opt.tabstop = 4       -- insert 4 spaces for a tab
vim.opt.clipboard = ""
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
vim.opt.showtabline = 0   -- hide tabs
vim.opt.relativenumber = true

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
lvim.builtin.bufferline.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.breadcrumbs.active = false
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

require("presence").setup({
    -- General options
    auto_update         = true,                       -- Update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
    neovim_image_text   = "The One True Text Editor", -- Text displayed when hovered over the Neovim image
    main_image          = "neovim",                   -- Main image display (either "neovim" or "file")
    client_id           = "793271441293967371",       -- Use your own Discord application client id (not recommended)
    log_level           = nil,                        -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
    debounce_timeout    = 10,                         -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
    enable_line_number  = false,                      -- Displays the current line number instead of the current project
    blacklist           = {},                         -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
    buttons             = false,                      -- Configure Rich Presence button(s), either a boolean to enable/disable, a static table (`{{ label = "<label>", url = "<url>" }, ...}`, or a function(buffer: string, repo_url: string|nil): table)
    file_assets         = {},                         -- Custom file asset definitions keyed by file names and extensions (see default config at `lua/presence/file_assets.lua` for reference)
    show_time           = false,                      -- Show the timer

    -- Rich Presence text options
    editing_text        = "Editing a file",            -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
    file_explorer_text  = "Browsing the codebase",     -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
    git_commit_text     = "Committing changes",        -- Format string rendered when committing changes in git (either string or function(filename: string): string)
    plugin_manager_text = "Managing plugins",          -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
    reading_text        = "Reading a file",            -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
    workspace_text      = "Working on something cool", -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
    line_number_text    = "Line %s out of %s",         -- Format string rendered when `enable_line_number` is set to true (either string or function(line_number: number, line_count: number): string)
})

-- Additional Plugins
lvim.plugins = {
    { "morhetz/gruvbox" },
    { "folke/tokyonight.nvim" },
    { "mattn/emmet-vim" },
    { "andweeb/presence.nvim" },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
}
