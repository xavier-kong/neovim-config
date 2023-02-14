
require('packer').startup(function(use)
	use { 'wbthomason/packer.nvim' }
 	use { 'morhetz/gruvbox' }
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'
	use 'scrooloose/nerdtree'
	use 'scrooloose/nerdcommenter'
	use 'sheerun/vim-polyglot'
	use 'jiangmiao/auto-pairs'
	use {'neoclide/coc.nvim', branch = 'release'}
	use 'tpope/vim-fugitive'

	-- use 'leafgarland/typescript-vim', { 'for': 'typescript' }
	-- use 'peitalin/vim-jsx-typescript', { 'for': ['jsx', 'typescript'] }
	-- use 'yuezk/vim-js', { 'for': ['js', 'javascript'] }
	-- use 'pangloss/vim-javascript', { 'for': ['js', 'javascript'] }
	-- use 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	-- use 'junegunn/fzf.vim'
	-- Plug 'tpope/vim-fugitive'
	-- Plug 'tpope/vim-fugitive'

	use 'axelf4/vim-strip-trailing-whitespace'
	use 'ethanholz/nvim-lastplace'
	use 'wellle/context.vim'
	use 'dstein64/vim-startuptime'
	use 'ryanoasis/vim-devicons'
	use 'mhinz/vim-signify'

	use ({
		'Pocco81/auto-save.nvim',
		config = function()
			require("auto-save").setup()
		end,
	})

	--[[use {
	  "startup-nvim/startup.nvim",
	  requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
	  config = function()
		require("startup").setup { theme = "dashboard", enabled = false }
	  end,
	}]]
	-- telescope, plenary
end)

vim.api.nvim_exec(
[[
	" Options
	filetype plugin indent on   " Allow auto-indenting depending on file type
	syntax on

	let g:coc_global_extensions = ['coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

	let g:go_metalinter_enabled = []

	" use <tab> for trigger completion and navigate to the next complete item
	function! s:check_back_space() abort
	  let col = col('.') - 1
	  return !col || getline('.')[col - 1]  =~ '\s'
	endfunction

	inoremap <silent><expr> <Tab>
		  \ pumvisible() ? "\<C-n>" :
		  \ <SID>check_back_space() ? "\<Tab>" :
		  \ coc#refresh()

]],
true)

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
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

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

vim.api.nvim_exec(
[[
colorscheme gruvbox
]],
true)

vim.g.gruvbox_transparent_bg='0'
vim.g.bargreybars_auto='0'

vim.g["airline_solorized_bg"]='dark'
vim.g["airline_powerline_fonts"]=1
vim.g["airline#extensions#tabline#enabled"] = 1
vim.g["airline#extensions#tabline#show_buffers"] = 1
vim.g["airline#extensions#tabline#formatter"] = 'unique_tail'
-- -- vim.g.airline#extensions#tabline#left_sep=' '
-- -- vim.g.airline#extensions#tabline#left_alt_sep='|'
vim.g.NERDTreeQuitOnOpen=1
vim.g.NERDTreeWinPos = 'right'
vim.g.NERDTreeShowHidden=1
vim.g.minimap_auto_start=1
vim.g.minimap_highlight_range=1
vim.g.minimap_highlight_search=1

vim.g.go_diagnostics_enabled=0
-- vim.g.go_metalinter_enabled = []
vim.g.go_diagnostics_level=2

-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = {}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<F5>", ":NERDTreeToggle<CR>")
map("n", "<C-K>", ":bnext<CR>")
map("n", "<C-J>", ":bprev<CR>")

--[[
nnoremap <C-q> :q!<CR>
nnoremap <F4> :bd<CR>
nnoremap <F6> :sp<CR>:terminal<CR>

-- Tabs
nnoremap <S-Tab> gT
nnoremap <Tab> gt
nnoremap <silent> <S-t> :tabnew<CR>
--]]

