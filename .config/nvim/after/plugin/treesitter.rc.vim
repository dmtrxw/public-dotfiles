if !exists('g:loaded_nvim_treesitter')
  echo "Not loaded treesitter"
  finish
endif

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "css",
    "html",
    "javascript",
    "json",
    "tsx",
    "typescript",
    "vue"
  },
}
EOF
