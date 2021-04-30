let g:airline_powerline_fonts=1
set laststatus=2
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
set nowrap
set mouse=a
syntax on