-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  
  use "wbthomason/packer.nvim" -- Packer itself
  use "morhetz/gruvbox" -- Grubox Theme
  use "EdenEast/nightfox.nvim" -- NightFox Theme
  use 'tanvirtin/monokai.nvim' -- Monokai Theme
  use "neovim/nvim-lspconfig" -- Configurations for Nvim LSP 
  use "tpope/vim-surround" -- Surround words with character of choice like " , { , [
  use "nvim-lua/plenary.nvim" -- provide additional lua libraries for many plugins to work
  use 'nvim-tree/nvim-web-devicons' -- web dev icons
  use "lukas-reineke/indent-blankline.nvim" -- indent lines

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' } -- fzf in C native

  use {
      "nvim-treesitter/nvim-treesitter",  -- treesitter
      run = function() 
          require("nvim-treesitter.install").update({with_sync=true}) 
      end,
  }

  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

end)
