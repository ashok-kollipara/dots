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

-- Move lines vertically up/down
vim.keymap.set("n","<leader>j", "<cmd>:m .+1<CR>==")
vim.keymap.set("n","<leader>k", "<cmd>:m .-2<CR>==")
vim.keymap.set("x","<leader>j", "<cmd>:'<,'>m '>+1<CR>gv=gv") -- Move selection lines up/down
vim.keymap.set("x","<leader>k", "<cmd>:'<,'>m '<-2<CR>gv=gv")

-- Toggle search term highlighting post search
vim.keymap.set("n","<Space><F4>", function()
    vim.opt.hlsearch = not vim.opt.hlsearch:get()
end
)

-- Toggle EOL listchars visibility
vim.keymap.set("n","<leader><CR>", function()
	vim.opt.list = not vim.opt.list:get()
end
)
