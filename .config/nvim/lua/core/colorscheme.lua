vim.opt.background = "dark"

-- tried to do this as autocmd on BufEnter and it messes up lualine
local hour = tonumber(os.date("%H"))
if (hour < 17)
then
    print("Its daylight outside < 6pm")
    vim.cmd('colorscheme gruvbox')
else
    print("its night time > 6pm")
    vim.cmd('colorscheme nightfox')
end
