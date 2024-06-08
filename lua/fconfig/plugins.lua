-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- HACK kakdjakjf
local cmd = require('pckr.loader.cmd')
local keys = require('pckr.loader.keys')

require('pckr').add {
    { 'rose-pine/neovim' },
    { 'catppuccin/nvim' },
    { 'philrunninger/nerdtree-visual-selection' },
    { 'christoomey/vim-tmux-navigator' },
    { 'mbbill/undotree' },
    { 'preservim/nerdtree' },
    { 'lambdalisue/suda.vim' },
    --{ 'folke/trouble.nvim' },
    { 'folke/todo-comments.nvim' },
    { 'ryanoasis/vim-devicons' },
    { 'Xuyuanp/nerdtree-git-plugin' },
    { 'lukas-reineke/lsp-format.nvim' },
    { 'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    },
    { 'tiagofumo/vim-nerdtree-syntax-highlight' },
    { 'Mofiqul/dracula.nvim' },
    { 'norcalli/nvim-colorizer.lua' },
    { 'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end
    },
    { 'nvim-telescope/telescope.nvim',
        tag = '0.1.6',
        requires = { 'nvim-lua/plenary.nvim' }
    },
    { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },
    { 'stevearc/dressing.nvim' },
    { 'petertriho/cmp-git' },
    { 'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    },

}
