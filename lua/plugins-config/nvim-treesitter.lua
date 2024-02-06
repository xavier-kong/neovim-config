require('nvim-treesitter.configs').setup({
        ensure_installed = { 'html', 'json', 'typescript', 'javascript', 'lua', 'c', 'rust', 'go', "toml", 'css', 'astro', 'tsx' },
        highlight = {
                enabled = true,
        },
        autotag = {
                enable = true
        }
})


