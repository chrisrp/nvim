local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
-- Remover linhas abaixo.. usar PackerInstall para instalar novos plugins
-- vim.cmd [[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerInstall
--   augroup end
-- ]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "kyazdani42/nvim-web-devicons"  -- Useful icons used in other plugins

  -- colorscheme
  use { "folke/tokyonight.nvim",
    tag = "v4.11.0",
    lazy = false,
    priority = 1000,
    lock = true,
    opts = {}, }

 --snippet engine
  use { "L3MON4D3/LuaSnip", tag = "v2.4.0", lock = true }

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP

  -- telescope
  use { "nvim-telescope/telescope.nvim", tag = "0.1.8", lock = true, }

  -- treesitter
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", tag = "v0.9.2", lock = true, }

  -- NvimTree
  use { "kyazdani42/nvim-tree.lua", tag = "v1.9.0", lock = true, }

  -- auto completion
  -- blink
  use { "saghen/blink.cmp", tag = "v1.3.1", lock = true, }

  -- autopairs
  -- use { "windwp/nvim-autopairs", event = "InsertEnter", config = function() require("nvim-autopairs").setup {} end }

  -- ToogleTerm
  use { "akinsho/toggleterm.nvim", tag = "v2.13.0" }

  -- use { "kylechui/nvim-surround", tag = "*" }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
