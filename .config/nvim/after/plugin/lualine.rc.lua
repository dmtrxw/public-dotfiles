require'lualine'.setup {
    options = {
        theme = 'seoul256',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = { 'NvimTree' }
    },
    sections = { lualine_y = {} }
}
