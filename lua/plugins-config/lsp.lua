local lsp = require('lsp-zero').preset({
                name = 'minimal',
                set_lsp_keymaps = true,
                manage_nvim_cmp = true,
                suggest_lsp_servers = true,
})

-- (Optional) Configure lua language server for neovim
-- lsp.nvim_workspace()

lsp.ensure_installed({
                'tsserver',
                'eslint',
                'html',
                'jsonls',
                'clangd',
                'rust_analyzer',

})

lsp.nvim_workspace()

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
vim.lsp.diagnostic.on_publish_diagnostics, {
                virtual_text = false
}
)

lsp.setup()


