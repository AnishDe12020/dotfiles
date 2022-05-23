vim.cmd([[
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" autocmd vimenter * if argc() | NERDTree | endif
" autocmd VimEnter * NERDTree

" autocmd StdinReadPre * let s:std_in=1

" autocmd VimEnter * if argc() == 0 && !exists(“s:std_in”) | NERDTree | endif

" autocmd VimEnter * NERDTree

autocmd BufRead,BufEnter *.astro set filetype=astro

]])
