local function set(x)
	vim.cmd('set ' .. x)
end

set 'tabstop=2'
set 'shiftwidth=2'
set 'expandtab'
set 'cindent'
set 'conceallevel=1'
set 'number'
set 'undofile'
set 'undodir=~/.config/nvim/undo'
set 'undolevels=1000'
set 'foldlevelstart=99'
set 'nowrap'
set 'mouse=a'
set 'formatoptions-=ro'
set 'completeopt=menu,menuone,noselect'
set 'ignorecase smartcase'
set 'nomodeline'
set 'splitbelow splitright'
set 'confirm'
set 'scrolloff=999'
set 'colorcolumn=80'
set 'textwidth=80'
set 'termguicolors'
set 'fillchars=eob:'
set 'nohidden'
set 'writebackup'
set 'smarttab'
set 'showtabline=1'
set 'errorbells'
set "clipboard=unnamedplus"

vim.api.nvim_exec([[
  let $FZF_DEFAULT_COMMAND = 'ag -g ""'
]], true)
