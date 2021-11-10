if has("nvim")
    let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

if has("nvim")
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'blackcauldron7/surround.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'neoclide/coc.nvim', { 'branch': 'release' }
endif

call plug#end()
