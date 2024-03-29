local utils = require('core/utils')

local filename_to_lsp_name = {
    ['lsp/servers/_lua'] = 'lua-language-server',
    ['lsp/servers/_python'] = 'ruff-lsp',
    ['lsp/servers/_rust'] = 'rust_analyzer',
    ['lsp/servers/_cpp'] = 'clangd',
    ['lsp/servers/_toml'] = 'taplo',
    ['lsp/servers/_xml'] = 'lemminx',
    ['lsp/servers/_vim'] = 'vim-language-server',
    ['lsp/servers/_latex'] = 'texlab'
}

for filename, lsp_name in pairs(filename_to_lsp_name) do
    if utils.executable(lsp_name) then
        require(filename)
    end
end
