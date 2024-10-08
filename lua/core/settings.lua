local o = vim.o
local opt = vim.opt

o.relativenumber = true

o.shiftwidth = 4
o.tabstop = 4
vim.cmd('set colorcolumn=81')

o.encoding = "UTF-8"

o.mouse = "a"

o.title = true
o.softtabstop = 4
o.expandtab = true

o.splitright = true
o.splitbelow = true

o.autoindent = true

o.cursorline = true

o.scrolloff = 5

o.swapfile = false

opt.autoread = true

opt.showcmd = true

vim.cmd('set path +=**')

vim.cmd('filetype plugin on')
