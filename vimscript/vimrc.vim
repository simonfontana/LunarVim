" Maintain undo history between sessions
set undofile
set undodir=~/.vim/undo/
set undolevels=10000
set history=1000

" Return to last edit position when opening files
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

" Toggle line numbers with ctrl-n
nnoremap <C-n> :set number! relativenumber!<CR>
