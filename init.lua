require("plugins")
require("mappings")
require("config")
require("plugins-config")

local function SavePos()
    local view = vim.fn.winsaveview()
    vim.cmd [[ normal! gg=G`` ]]
    vim.fn.winrestview(view)
end

vim.api.nvim_create_autocmd({ "InsertLeave" }, {
    pattern = { "*.lua", "*.c", "*.h", "*.js", "*.ts" },
    callback = function()
        SavePos()
    end
})

vim.api.nvim_create_autocmd({ "CursorHold" }, {
    pattern = { "*" },
    callback = function()
        vim.diagnostic.open_float({ scope = "line" })
    end
})

local signs = {
    Error = " ", -- " "
    Warn = " ", -- " "
    Hint = " ", -- " "
    Info = " " -- " "
}

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = hl})
end
