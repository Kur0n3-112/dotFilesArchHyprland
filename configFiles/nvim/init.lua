-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("lspconfig").pyright.setup({})

-- config vimtex
vim.g.vimtex_compiler_method = "latexmk"
vim.g.vimtex_view_general_viewer = "zathura"
