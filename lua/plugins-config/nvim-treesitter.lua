require('nvim-treesitter.configs').setup({
        ensure_installed = { 'html', 'json', 'typescript', 'javascript', 'lua', 'c', 'rust', 'go', "toml", 'css', 'astro', 'tsx', 'python' },
        highlight = {
                enabled = true,
                enable = true
        },
        autotag = {
                enable = true
        }
})


