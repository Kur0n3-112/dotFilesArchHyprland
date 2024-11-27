-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

-- plugins
  -- Telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Nvim Treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  
  -- Harpoon 
  use('ThePrimeagen/harpoon')

  -- UndoTree
  use('mbbill/undotree')

  -- Vim Fugitive
  use('tpope/vim-fugitive')

  -- LSP
  use({'neovim/nvim-lspconfig'})
  use({'hrsh7th/nvim-cmp'})
  use({'hrsh7th/cmp-nvim-lsp'})

  -- Mason
  use({'williamboman/mason.nvim'})

  -- Ale (Syntax checking on the fly)
  use({'dense-analysis/ale'})

  -- Packer can manage itself
  use({'Mofiqul/dracula.nvim'})
 end)