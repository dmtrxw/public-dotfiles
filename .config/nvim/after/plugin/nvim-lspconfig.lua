local root_pattern = require('lspconfig').util.root_pattern
local lspconfig = require 'lspconfig'

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }

vim.api.nvim_set_keymap('n', '[g', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', ']g', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  if client.name == 'efm' then
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>fo', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
    client.resolved_capabilities.document_formatting = true
    client.resolved_capabilities.goto_definition = false
    return
  end

  if client.name == 'tsserver' then
    client.resolved_capabilities.document_formatting = false
  end

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
end

local prettier = {
   formatCommand = 'prettier --stdin-filepath ${INPUT}',
   formatStdin = true
}

lspconfig.tsserver.setup{
    on_attach = on_attach,
    filetypes = { "typescript", "javascript", "javascriptreact", "javascript.jsx", "typescriptreact", "typescript.tsx" },
    root_dir = root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
}

lspconfig.efm.setup {
  on_attach = on_attach,
  settings = {
    rootMarkers = {".git/"},
    languages = {
      javascript = {prettier},
      typescript = {prettier},
      javascriptreact = {prettier}
    }
  },
  filetypes = {
    "javascript",
    "typescript",
    "javascriptreact"
  },
}
