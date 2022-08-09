-- WIP 
local welcomenote = "Hello and welcome to python"
local myaugroup = vim.api.nvim_create_augroup("mycustomlua", {clear = true})

vim.api.nvim_create_autocmd("BufEnter", {command = "echo 'Hello'",group = myaugroup})

vim.api.nvim_create_autocmd("BufWrite", {
    callback = function()
        print 'You just saved a file'
        end,
        group = myaugroup, 
        buffer = 0
    })

local condition = true

if condition then
    vim.api.nvim_create_autocmd("FileType", {
        pattern= {"python","py"},
        callback = function() 
            vim.schedule(function() 
                print(vim.fn.expand("<afile>"))
            end)
        end,
        group = myaugroup,
    })
end

