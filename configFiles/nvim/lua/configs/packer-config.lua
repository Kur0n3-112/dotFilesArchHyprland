-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

-- plugins
  -- Telescope (telescope duh)
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
use {
  "AckslD/nvim-neoclip.lua",
  requires = {
    -- you'll need at least one of these
    -- {'nvim-telescope/telescope.nvim'},
    -- {'ibhagwan/fzf-lua'},
  },
  config = function()
    require('neoclip').setup()
  end,
}

  -- Nvim Treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  
  -- Harpoon (File fast navigation)
  use('ThePrimeagen/harpoon')

  -- UndoTree (Tree made from the changes of files)
  use('mbbill/undotree')

  -- Vim Fugitive
  use('tpope/vim-fugitive')

  -- LSP (Language System Protocol)
  use({'neovim/nvim-lspconfig'})
  use({'hrsh7th/nvim-cmp'})
  use({'hrsh7th/cmp-nvim-lsp'})
  use({'VonHeikemen/lsp-zero.nvim'})

  -- Mason
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  }
  -- Ale (Syntax checking on the fly)
  use({'dense-analysis/ale'})

  -- Error checker
  use({'folke/trouble.nvim', requires = "nvim-tree/nvim-web-devicons"})

  -- OilNvim (file explorer in a nvim buffer)
  use({'stevearc/oil.nvim'})

  -- Rust Tools (Better Rust Development)
  use 'simrat39/rust-tools.nvim'
  --> Debugging
  use 'mfussenegger/nvim-dap'

  -- Vimtex
  use 'lervag/vimtex'

  -- Wich Key
 use ({'folke/which-key.nvim'})

--[=======================================================]--

  -- COLOR SCHEMES
  -- Dracula color scheme 
  use({'Mofiqul/dracula.nvim'})

  -- Gruvbox color scheme 
  use({'morhetz/gruvbox'})

 end)
