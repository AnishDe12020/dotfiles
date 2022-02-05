-- auto pack
vim.cmd [[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins.lua source <afile> | PackerSync
	augroup end
]]

vim.cmd [[
	augroup sync_lua
		autocmd!
		autocmd BufWritePost *.lua source ~/.config/nvim/init.lua
	augroup end
]]

