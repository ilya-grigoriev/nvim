vim.opt.rtp:remove("/usr/share/vim/vimfiles")
vim.cmd("packadd nohlsearch")
vim.o.relativenumber = true
vim.o.number = true
vim.o.swapfile = false
vim.o.tabstop = 4
vim.o.incsearch = true

vim.keymap.set({'n', 'v'}, 'H', '0')
vim.keymap.set({'n', 'v'}, 'L', '$')
vim.keymap.set('n', 'gb', '<C-^>')
vim.keymap.set('v', '<C-y>', '"*y')

vim.pack.add{
  { src =  'https://github.com/chomosuke/typst-preview.nvim' },
  { src =  'https://github.com/nvim-mini/mini.pick' },
  { src =  'https://github.com/stevearc/oil.nvim' },
}

require("oil").setup()
vim.keymap.set('n', '<C-n>', ':Oil<CR>')

vim.api.nvim_create_autocmd('LspAttach', {
		callback = function(x)
				local client = vim.lsp.get_client_by_id(x.data.client_id)
				if client:supports_method('textDocument/completion') then
						vim.lsp.completion.enable(true, client.id, x.buf, {autotrigger = true})
				end
		end
})
vim.cmd("set completeopt+=noselect")

vim.lsp.config['tinymist'] = { cmd = {'tinymist'} }
vim.lsp.enable({'tinymist'})

mini = require("mini.pick").setup({ mappings = {move_down = '<C-j>', move_up = '<C-k>'} })
vim.keymap.set('n', '\'r', function() MiniPick.builtin.grep_live({"rg"}) end )
vim.keymap.set('n', '\'f', function() MiniPick.builtin.files() end )
vim.keymap.set('n', '\'h', function() MiniPick.builtin.help() end )
