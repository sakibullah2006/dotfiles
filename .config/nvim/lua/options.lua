require "nvchad.options"
local opt = vim.opt

-- Tab and indentation settings
    opt.expandtab = true      -- Use spaces instead of tabs
    opt.shiftwidth = 4        -- Number of spaces for indentation
    opt.tabstop = 4           -- Number of spaces per tab
    opt.softtabstop = 4       -- Number of spaces per Tab key press     
    opt.smartindent = true    -- Enable smart indentation
-- line number settings 
    opt.number = true
    opt.relativenumber = false

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
