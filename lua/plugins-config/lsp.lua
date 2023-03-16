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
                'clangd'
        })

lsp.nvim_workspace()

lsp.setup_nvim_cmp({
                preselect = 'none',
                completion = {
                        completeopt = 'menu,menuone,noinsert,noselect'
                }
        })

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
        vim.lsp.diagnostic.on_publish_diagnostics, {
                virtual_text = true
        }
        )

lsp.setup()


