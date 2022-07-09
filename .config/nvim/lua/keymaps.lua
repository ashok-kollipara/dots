vim.keymap.set('n','<F9>', function()
	vim.opt.relativenumber = not vim.opt.relativenumber:get()
end
)
