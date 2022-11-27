-- set leader to <Space>
vim.g.mapleader = " " -- for some reason <Space> does not work

-- Toggle line numbers
vim.keymap.set("n","<leader><F9>", function()
	vim.opt.relativenumber = not vim.opt.relativenumber:get()
	vim.opt.number = not vim.opt.number:get()
end
)

-- Decrease/Increase split window width
vim.keymap.set("n","<leader>[", "<cmd>:vertical :resize -5<CR>")
vim.keymap.set("n","<leader>]", "<cmd>:vertical :resize +5<CR>")

-- Toggle search term highlighting post search
vim.keymap.set("n","<Space><F4>", function()
    vim.opt.hlsearch = not vim.opt.hlsearch:get()
end
)
