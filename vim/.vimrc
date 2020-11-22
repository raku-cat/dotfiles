let g:airline_powerline_fonts=1
set laststatus=2
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
set nowrap