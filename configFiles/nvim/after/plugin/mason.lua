require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here
  -- with the ones you want to install
  ensure_installed = {'clangd'},
  handlers = {
   -- function('server_name')
   --   require('lspconfig')["clangd"].setup({})
   --   require('lspconfig')["textlsp"].setup({})
   -- end,
  }
})
