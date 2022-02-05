vim.cmd([[
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
autocmd vimenter * if !argc() | NERDTree | endif
]])
