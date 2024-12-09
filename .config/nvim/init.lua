-- Set up base cache and leader key
vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- Bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- Load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- -- Load custom configuration
-- local custom_config_path = vim.fn.stdpath("config") .. "/lua/configs/custom/chadrc.lua"
-- print("Custom config path: " .. custom_config_path)  -- Debugging line to print the path
--
-- if vim.uv.fs_stat(custom_config_path) then
--   require("configs.custom.chadrc")  -- Load the custom config if it exists
-- else
--   print("Custom config not found!")  -- Debugging line to confirm custom config existence
-- end

-- Load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)

