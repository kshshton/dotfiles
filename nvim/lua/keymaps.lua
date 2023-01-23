local function map(mode, lhs, rhs, opts)
local options = { noremap = true, silent = true }

if opts then
    options = vim.tbl_extend('force', options, opts)
end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '

map('i', 'jj', '<esc>')
map('n', '<leader>q', '<cmd>noh<cr>')
map('n', 'J', '<cmd>tabp<cr>')
map('n', 'K', '<cmd>tabn<cr>')
map('n', 'Y', 'y$')
map('n', '<leader>r', '<cmd>so %<cr>')
map('n', '<leader>s', '<cmd>Ex<cr>')

map ('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
map ('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
map ('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
map ('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')

local opts = { noremap=true, silent=true }

vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)
