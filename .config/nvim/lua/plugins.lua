--VIM-PLUG AREA

local Plug = vim.fn['plug#']
vim.call('plug#begin', '$HOME/.local/share/nvim/plugged')

--------Themes section------
--Plug 'dracula/vim' , {'as' : 'dracula'}

Plug 'mhartington/oceanic-next'

Plug 'EdenEast/nightfox.nvim'

Plug 'morhetz/gruvbox'

vim.call ('plug#end')


-- Select Loaded plugins

vim.cmd('colorscheme gruvbox')
