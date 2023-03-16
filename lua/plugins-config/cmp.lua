local cmp = require('cmp')
local luasnip = require('luasnip')


cmp.setup {
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
