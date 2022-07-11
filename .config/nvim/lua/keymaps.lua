-- Toggle line numbers
vim.keymap.set('n','<F9>', function()
	vim.opt.relativenumber = not vim.opt.relativenumber:get()
	vim.opt.number = not vim.opt.number:get()
end
)

-- Decrease/Increase split window width
vim.keymap.set('n','<Space>[', "<cmd>:vertical :resize -5<CR>")
vim.keymap.set('n','<Space>]', "<cmd>:vertical :resize +5<CR>")
