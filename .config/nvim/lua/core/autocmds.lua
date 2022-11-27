-- WIP 
local welcomenote = "Hello and welcome to python"
local myaugroup = vim.api.nvim_create_augroup("mycustomlua", {clear = true})

vim.api.nvim_create_autocmd("BufEnter", {command = "echo 'complete autocmds setup'",group = myaugroup})

vim.api.nvim_create_autocmd("BufWrite", {
    callback = function()
        print 'You just saved a file'
        end,
        group = myaugroup, 
        buffer = 0
    })

-- Set python indent spaces for work
vim.api.nvim_create_autocmd("FileType", {
	pattern = "python",
	callback = function()
		vim.opt_local.shiftwidth = 2
		vim.opt_local.tabstop = 2
	end
})
