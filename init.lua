vim.opt.rtp:remove("/usr/share/vim/vimfiles")

vim.o.relativenumber = true
vim.o.number = true
vim.o.swapfile = false
vim.o.tabstop = 4
vim.g.mapleader = "'"

vim.keymap.set('n', '<C-n>', ':Ntree<CR>')
vim.keymap.set({'n', 'v'}, 'H', '0')
vim.keymap.set({'n', 'v'}, 'L', '$')
vim.keymap.set('n', 'gb', '<C-^>')
vim.keymap.set('v', '<C-y>', '"*y')

vim.pack.add{
  { src =  'https://github.com/chomosuke/typst-preview.nvim' },
  { src =  'https://github.com/mason-org/mason.nvim' },
  { src =  'https://github.com/nvim-telescope/telescope.nvim' },
  { src =  'https://github.com/nvim-lua/plenary.nvim' },
}

typst = require('typst-preview')

require("mason").setup()

vim.cmd(":hi Statusline guibg=NONE")

vim.cmd("packadd nohlsearch")
