vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- Set ignorecase for searches 
vim.cmd("set ic")
-- Remove higlighting from last search
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true

-- Map floating window for diagnostic
vim.api.nvim_set_keymap('n', '<leader>df', ':lua vim.diagnostic.open_float()<CR>', {noremap = true, silent = true})
