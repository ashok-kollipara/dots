-- ==>> General load time preferences

-- General Booleans
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.ignorecase = true
vim.opt.hlsearch = false

-- General Variables
vim.opt.scrolloff = 10
vim.opt.syntax = 'enable'
vim.opt.clipboard = 'unnamedplus'
-- vim.opt.foldmethod = 'indent'

-- ===> Text, tab and indent related
-- Use spaces instead of tabs
vim.opt.expandtab = true

-- -- Be smart when using tabs ;)
vim.opt.smarttab = true
--
-- -- 1 tab = 4 spaces
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

-- Linebreak on 500 characters
-- vim.opt.linebreak = true
-- vim.opt.textwidth = 500

-- Auto indent and Smart indent
vim.opt.autoindent = true
vim.opt.smartindent = true
