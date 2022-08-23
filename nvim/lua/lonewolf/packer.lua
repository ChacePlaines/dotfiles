local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use "wbthomason/packer.nvim"

  -- visual
  use "folke/tokyonight.nvim"
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true }
  }

  -- code
  use "nvim-lua/plenary.nvim" -- Common utilities
  use "onsails/lspkind-nvim" -- vscode-like pictograms
  use "hrsh7th/cmp-buffer" -- nvim-cmp source for buffer words
  use "hrsh7th/cmp-nvim-lsp" -- nvim-cmp source for neovim"s built-in LSP
  use "hrsh7th/nvim-cmp" -- Completion
  use "neovim/nvim-lspconfig" -- LSP
  use "MunifTanjim/prettier.nvim" -- Prettier plugin for Neovim"s built-in LSP client
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "numToStr/Comment.nvim"

  use "glepnir/lspsaga.nvim" -- LSP UIs
  use "L3MON4D3/LuaSnip"
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-file-browser.nvim"
  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"
  use "norcalli/nvim-colorizer.lua"
  use "akinsho/nvim-bufferline.lua"

  use "lewis6991/gitsigns.nvim"
  use "dinhhuy258/git.nvim" -- For git blame & browse
  use "simrat39/rust-tools.nvim"
end)
