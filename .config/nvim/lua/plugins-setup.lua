-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  
  use "wbthomason/packer.nvim" -- Packer itself
  use "morhetz/gruvbox" -- Grubox Theme
  use "EdenEast/nightfox.nvim" -- NightFox Theme
  use "neovim/nvim-lspconfig" -- Configurations for Nvim LSP 
  use "tpope/vim-surround" -- Surround words with character of choice like " , { , [
  use "nvim-lua/plenary.nvim" -- provide additional lua libraries for many plugins to work

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

end)
