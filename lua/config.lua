-- to stop icons from moving screen
vim.opt.signcolumn = 'yes';

vim.diagnostic.config({
    virtual_text = true,
    -- virtual_lines = true
})

vim.cmd[[colorscheme tokyonight-moon]]

vim.g.NERDTreeWinPos = 'right'
vim.g.NERDTreeShowHidden=1
vim.g.NERDTreeQuitOnOpen=1
vim.g.minimap_auto_start=1
vim.g.minimap_highlight_range=1
vim.g.minimap_highlight_search=1

vim.g.go_diagnostics_enabled=0
-- vim.g.go_metalinter_enabled = []
vim.g.go_diagnostics_level=2

-- speed up scrolling in vim
vim.o.ttyfast = true

-- Modifies the auto-complete menu to behave more like an IDE.
vim.o.completeopt = 'noinsert,menuone,noselect'

-- Hide unused buffers
vim.o.hidden = true

-- Enables the clipboard between Vim/Neovim and other applications.
vim.opt.clipboard = 'unnamedplus'

-- Highlights the current line in the editor
vim.wo.cursorline = true

-- Show replacements in a split screen
vim.opt.inccommand = 'split'

-- Show file title
vim.opt.title = true

-- Allow to use the mouse in the editor
vim.opt.mouse = 'a'

-- Shows the line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- tab settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true

-- spell checking
vim.opt.spell = true

-- update time
vim.o.updatetime = 100

-- indent a new line
vim.opt.autoindent = true

-- Change the split screen behavior
vim.o.splitright = true
vim.o.splitbelow = true

-- show a more advanced menu
vim.o.wildmenu = true

-- not quite sure what these settings do
vim.api.nvim_exec(
[[
" Options
"    filetype plugin indent on   " Allow auto-indenting depending on file type
"    syntax on
"    syntax sync minlines=256

]],
true)

