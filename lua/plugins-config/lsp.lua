local lsp = require('lsp-zero').preset({
                name = 'minimal',
                set_lsp_keymaps = true,
                manage_nvim_cmp = true,
                suggest_lsp_servers = true,
})

-- (Optional) Configure lua language server for neovim
-- lsp.nvim_workspace()
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
lsp.ensure_installed({
                'tsserver',
                'eslint',
                'html',
                'jsonls',
                'clangd',
                'rust_analyzer',
                'gopls',
                'tailwindcss',
                'cssls',
                'pyright'
})

lsp.skip_server_setup({'rust_analyzer'})

lsp.nvim_workspace()

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
vim.lsp.diagnostic.on_publish_diagnostics, {
                virtual_text = false
}
)

lsp.setup()

local rust_tools = require('rust-tools')

rust_tools.setup({
                tools = {
                                autoSetHints = true
                },
                server = {
                                --standalone = true,
                                on_attach = function(_, bufnr)
                                                vim.keymap.set('n', '<leader>ca', rust_tools.hover_actions.hover_actions, {buffer = bufnr})
                                end
                },
                ["rust-analyzer"] = {
                                assist = {
                                                importEnforceGranularity = true,
                                                importPrefix = "create"
                                },
                                cargo = { allFeatures = true },
                                checkOnSave = {
                                                -- default: `cargo check`
                                                --command = "clippy",
                                                allFeatures = true
                                }
                },
})
