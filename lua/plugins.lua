-- docs at https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    --         { 'wbthomason/packer.nvim' },

    'lewis6991/impatient.nvim',

    { 'morhetz/gruvbox' },

    'scrooloose/nerdtree',


    'scrooloose/nerdcommenter',

    -- 'sheerun/vim-polyglot',

    'tpope/vim-fugitive',

    {
        'leafgarland/typescript-vim',
        lazy = true
    },

    'junegunn/fzf.vim',

    {
        'pangloss/vim-javascript',
        lazy = true
    },

    'axelf4/vim-strip-trailing-whitespace',

    'ethanholz/nvim-lastplace',

    'dstein64/vim-startuptime',

    'nvim-tree/nvim-web-devicons',

    'mhinz/vim-signify',

    'folke/lsp-colors.nvim',

    {
        'folke/tokyonight.nvim',
        lazy = false
    },

    'onsails/lspkind.nvim',

    {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
    },

    {
        'Pocco81/auto-save.nvim',
        config = function()
            require("auto-save").setup()
        end,
    },

    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make'
    },

    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },

    {
        'nvim-telescope/telescope.nvim',
        version = '0.1.1',
        -- or                            , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim'}
    },

    {
        "folke/trouble.nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {}
        end
    },

    -- LSP
    {
        'VonHeikemen/lsp-zero.nvim',
        version = 'v1.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    },

    ---- https://github.com/utilyre/barbecue.nvim
    ({
        "utilyre/barbecue.nvim",
        version = "*",
        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons", -- optional dependency
        },
        -- after = "tokyonight", -- keep this if you're using NvChad
        config = function()
            require("barbecue").setup()
        end,
    }),

    -- https://github.com/akinsho/bufferline.nvim
    {
        'akinsho/bufferline.nvim',
        version = "v3.*",
        dependencies = 'nvim-tree/nvim-web-devicons'
    },

    {
        'nmac427/guess-indent.nvim',
        config = function() require('guess-indent').setup {} end,
    },
})

require('impatient')

