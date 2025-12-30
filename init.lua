vim.opt.rtp:remove("/usr/share/vim/vimfiles")
vim.cmd("packadd nohlsearch")
vim.cmd("set relativenumber number incsearch ignorecase")
vim.o.swapfile = false
vim.o.tabstop = 4

vim.keymap.set({'n', 'v'}, 'H', '0')
vim.keymap.set({'n', 'v'}, 'L', '$')
vim.keymap.set('n', 'gb', '<C-^>')
vim.keymap.set('v', '<C-y>', '"*y')

vim.pack.add{
  'https://github.com/kaarmu/typst.vim',
  'https://github.com/nvim-mini/mini.pick',
  'https://github.com/stevearc/oil.nvim',
  'https://github.com/L3MON4D3/LuaSnip',
  'https://github.com/kdheepak/monochrome.nvim',
}

require("oil").setup()
vim.keymap.set('n', '<C-n>', ':Oil<CR>')

vim.api.nvim_create_autocmd('LspAttach', {
		callback = function(x)
				local client = vim.lsp.get_client_by_id(x.data.client_id)
				if client:supports_method('textDocument/completion') then
						vim.lsp.completion.enable(true, client.id, x.buf)
				end
		end
})
vim.keymap.set('n', "'e", '<cmd>lua vim.diagnostic.open_float()<CR>')

vim.lsp.config['tinymist'] = { cmd = {'tinymist'} }
vim.lsp.enable({'tinymist'})

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
