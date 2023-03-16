vim.api.nvim_exec([[
    " use <tab> for trigger completion and navigate to the next complete item
    " https://github.com/neoclide/coc.nvim/wiki/Completion-with-sources#use-tab-or-custom-key-for-trigger-completion

    " function! CheckBackspace() abort
    "  let col = col('.') - 1
    "  return !col || getline('.')[col - 1]  =~# '\s'
    " endfunction

    " inoremap <silent><expr> <Tab>
    " \ pumvisible() ? pumnext(1) :
    " \ CheckBackspace() ? "\<Tab>" :


    " inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

    " Restore cursor position, window position, and last search after running a
    " command.
    ]],
    true)

