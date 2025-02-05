local status, packer = pcall(require, 'packer')

if (not status) then
  print("packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use { "catppuccin/nvim", as = "catppuccin" }
  use {
    "lukas-reineke/indent-blankline.nvim"
  }
  use 'wbthomason/packer.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use 'neovim/nvim-lspconfig'
  use 'onsails/lspkind-nvim'
  use 'L3MON4D3/LuaSnip'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  use 'nvim-treesitter/nvim-treesitter'
  use 'windwp/nvim-ts-autotag'
  use 'windwp/nvim-autopairs'
  use 'nvim-tree/nvim-web-devicons'
  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }
  use "glepnir/lspsaga.nvim"
  use "akinsho/nvim-bufferline.lua"
  use "jose-elias-alvarez/null-ls.nvim"
  use "MunifTanjim/prettier.nvim"
  use "lewis6991/gitsigns.nvim"
  use "sindrets/diffview.nvim"
  use {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }
  }
  use "terrortylor/nvim-comment"
end)

require("nvim_comment").setup()

