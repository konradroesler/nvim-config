vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "

-- Set ignorecase for searches 
vim.cmd("set ic")

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true
