local cmp = require('cmp')
local luasnip = require('luasnip')
local lspkind = require('lspkind')

-- If you want insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on(
        'confirm_done',
        cmp_autopairs.on_confirm_done()
        )

cmp.setup {
        formatting = {
                format = lspkind.cmp_format({
                                mode = "symbol_text",
                                menu = ({
                                                buffer = "[Buffer]",
                                                nvim_lsp = "[LSP]",
                                                luasnip = "[LuaSnip]",
                                                nvim_lua = "[Lua]",
                                                latex_symbols = "[Latex]",
                                        })
                        }),
        },
        completion = {
                completeopt = 'menu,menuone,noinsert'
        },
        mapping = {
                ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                ["<Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                                cmp.select_next_item()
                        elseif luasnip.jumpable(1) then
                                luasnip.jump(1)
                        else
                                fallback()
                        end
                end, {'i', 's'}),
}
}


