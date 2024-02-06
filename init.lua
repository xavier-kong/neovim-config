require("plugins")
require("mappings")
require("config")
require("plugins-config")
require('ftdetect.astro')

local function SavePos()
    local view = vim.fn.winsaveview()
    vim.cmd [[ normal! gg=G`` ]]
    vim.fn.winrestview(view)
end

vim.api.nvim_create_autocmd({ "InsertLeave" }, {
    pattern = { "*.lua", "*.c", "*.h", "*.js", "*.ts", "*.rs", "*.tsx", ".css" },
    callback = function()
        SavePos()
    end
})

local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("InsertLeave", {
    pattern = "*.go",
    callback = function()
        require('go.format').gofmt()
    end,
    group = format_sync_grp,
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

-- init.lua

vim.filetype.add({
    extension = {
        mdx = "mdx",
    },
})

vim.treesitter.language.register("markdown", "mdx") -- the mdx filetype will use the markdown parser and queries.
