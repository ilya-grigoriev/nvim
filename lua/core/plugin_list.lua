return {
    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        'nvim-lua/plenary.nvim',
        'sharkdp/fd',
    },

    -- LSP
    {
        'hrsh7th/nvim-cmp',
        'neovim/nvim-lspconfig',
        'hrsh7th/cmp-nvim-lsp',
        'nvimdev/guard.nvim',
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },

    {
        "ray-x/lsp_signature.nvim",
        event = "VeryLazy",
        opts = {},
    },

    -- Themes
    {"rebelot/kanagawa.nvim"},

    -- Snippets
    {
        "L3MON4D3/LuaSnip",
        run = "make install_jsregexp"
    },
    {
        'rafamadriz/friendly-snippets',
        'saadparwaiz1/cmp_luasnip',
    },

    -- Treesitter
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", },
    { 'nvim-treesitter/playground' },

    -- Fzf
    {
        'junegunn/fzf.vim',
        requires = { 'junegunn/fzf', run = ':call fzf#install()' }
    },

    -- Latex
    {
        "lervag/vimtex",
        lazy = false,     -- we don't want to lazy load VimTeX
        -- tag = "v2.15", -- uncomment to pin to a specific release
        init = function()
            -- VimTeX configuration goes here
        end
    },

    'ThePrimeagen/vim-be-good',
}
