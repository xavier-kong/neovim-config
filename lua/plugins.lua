require('packer').startup(function(use)

    use { 'wbthomason/packer.nvim' }

    use { 'morhetz/gruvbox' }
    use 'scrooloose/nerdtree' use 'scrooloose/nerdcommenter'

    use 'sheerun/vim-polyglot'

    use 'jiangmiao/auto-pairs'

    use 'tpope/vim-fugitive' use 'leafgarland/typescript-vim'

    use 'junegunn/fzf.vim'

    use 'pangloss/vim-javascript'

    use 'axelf4/vim-strip-trailing-whitespace'

    use 'ethanholz/nvim-lastplace'

    use 'dstein64/vim-startuptime'

    use 'nvim-tree/nvim-web-devicons'

    use 'mhinz/vim-signify'

    use 'folke/lsp-colors.nvim'

    use 'folke/tokyonight.nvim'

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use ({
            'Pocco81/auto-save.nvim',
            config = function()
                require("auto-save").setup()
            end,
        })

    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {}
        end
    }

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
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
    }

    ---- https://github.com/utilyre/barbecue.nvim
        use({
            "utilyre/barbecue.nvim",
            tag = "*",
            requires = {
                "SmiteshP/nvim-navic",
                "nvim-tree/nvim-web-devicons", -- optional dependency
            },
            after = "nvim-web-devicons", -- keep this if you're using NvChad
            config = function()
                require("barbecue").setup()
            end,
        })
    -- https://github.com/akinsho/bufferline.nvim
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

end)

