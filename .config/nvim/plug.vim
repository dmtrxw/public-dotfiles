if has("nvim")
    let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'mattn/emmet-vim'

if has("nvim")
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'windwp/nvim-spectre'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'neovim/nvim-lspconfig'

    Plug 'andweeb/presence.nvim'
endif

call plug#end()
