local map = vim.api.nvim_set_keymap
local opts = { noremap = true }

map('n', '<leader>w', ':w<CR>', opts)
map('n', '<leader>qq', ':q!<CR>', opts)
map('n', '<leader>ss', ':wq!<CR>', opts)
