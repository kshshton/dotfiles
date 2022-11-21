local g = vim.g
local opt = vim.opt

opt.clipboard = 'unnamed'
opt.swapfile = false
opt.completeopt = 'menuone,noinsert,noselect'
opt.number = true
opt.relativenumber = true
opt.ignorecase = true
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true
opt.hidden = true
vim.cmd('colorscheme tokyonight-moon')
