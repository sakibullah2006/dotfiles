require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set
local opts = { silent = true, noremap = true }

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- local keymap = vim.api.nvim_set_keymap
-- local opts = { noremap = true, silent = true }

-- Tab mappings
map("v", "<Tab>", ">gv", { desc = "Indent in visual mode", unpack(opts) })
map("v", "<S-Tab>", "<gv", { desc = "Un-indent in visual mode", unpack(opts) })
map("i", "<S-Tab>", "<C-d>", { desc = "Un-indent in insert mode", unpack(opts) })

-- Ctrl + Q to close all buffers and exit
map("n", "<C-q>", ":bufdo bwipeout | qa!<CR>", { desc = "Close all buffers and quit", unpack(opts) })
map("i", "<C-q>", "<Esc>:bufdo bwipeout | qa!<CR>", { desc = "Close all buffers and quit from insert mode", unpack(opts) })
map("v", "<C-q>", "<Esc>:bufdo bwipeout | qa!<CR>", { desc = "Close all buffers and quit from visual mode", unpack(opts) })
