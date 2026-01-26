vim.opt.rtp:remove("/usr/share/vim/vimfiles")
vim.cmd("packadd nohlsearch")
vim.cmd("set relativenumber number incsearch ignorecase")
vim.o.swapfile = false
vim.cmd("set tabstop=4 shiftwidth=4")
vim.g.clipboard = unnamedplus

vim.keymap.set({'n', 'v'}, 'H', '0')
vim.keymap.set({'n', 'v'}, 'L', '$')
vim.keymap.set('n', 'gb', '<C-^>')
vim.keymap.set('v', '<C-y>', '"+y')

vim.pack.add{
  'https://github.com/kaarmu/typst.vim',
  'https://github.com/nvim-mini/mini.pick',
  'https://github.com/stevearc/oil.nvim',
  {src = 'https://github.com/L3MON4D3/LuaSnip', run = "make install_jsregexp"},
  'https://github.com/kdheepak/monochrome.nvim',
}

require("oil").setup({view_options = {show_hidden = true}})
vim.keymap.set('n', '<C-n>', ':Oil<CR>')

vim.keymap.set('n', "'e", '<cmd>lua vim.diagnostic.open_float()<CR>')

vim.lsp.config['tinymist'] = { cmd = {'tinymist'} }
vim.lsp.config['clang'] = { cmd = {'clangd'} }
vim.lsp.config['bash_language_server'] = { cmd = {'bash-language-server', 'start'}, filetypes = {'sh'} }
vim.lsp.enable({'tinymist', 'clang', 'bash_language_server'})

require("mini.pick").setup({ mappings = {caret_left = '<C-h>', caret_right = '<C-l>'} })
vim.keymap.set('n', '\'r', function() MiniPick.builtin.grep_live() end )
vim.keymap.set('n', '\'f', function() MiniPick.builtin.files() end )
vim.keymap.set('n', '\'h', function() MiniPick.builtin.help() end )

require("luasnip").setup({enable_autosnippets = true})
require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/snippets/"})
vim.keymap.set('i', '<Tab>', function() require("luasnip").expand() end, {silent = true})
vim.keymap.set({'i', 's'}, '<C-j>', function() require("luasnip").jump(1) end, {silent = true})
vim.keymap.set({'i', 's'}, '<C-k>', function() require("luasnip").jump(-1) end, {silent = true})

vim.cmd("color monochrome")
