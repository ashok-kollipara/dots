-- ==>> General load time preferences

-- General Booleans
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.ignorecase = true
vim.opt.hlsearch = false
vim.opt.smartcase = true

-- General Variables
vim.opt.scrolloff = 10
vim.opt.syntax = 'enable'
vim.opt.clipboard:append("unnamedplus")
vim.opt.backspace = "indent,eol,start"
-- vim.opt.foldmethod = 'indent'

-- split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

-- ===> Text, tab and indent related
vim.opt.tabstop = 4 -- 1 tab = 4 spaces
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.smarttab = true -- Be smart when using tabs ;)
vim.opt.autoindent = true
vim.opt.smartindent = true -- Auto indent and Smart indent

-- Linebreak on 500 characters
-- vim.opt.linebreak = true
-- vim.opt.textwidth = 500

--sign column on left to show markers
--vim.opt.signcolumn = "yes"

-- List chars alert for trailing spaces, EOL
vim.opt.listchars = {trail = '*', eol = '↵'}
vim.opt.list = false
