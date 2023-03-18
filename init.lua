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
    pattern = { "*.lua", "*.c", "*.h" },
    callback = function()
        SavePos()
    end
})
