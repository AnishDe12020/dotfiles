require("AnishDe12020.options")
require("AnishDe12020.plugins")
-- require "AnishDe12020.coq"
require("AnishDe12020.keymaps")
require("AnishDe12020.autocmd")
require("AnishDe12020.null-ls")
require("AnishDe12020.closetag")
	
if !vim.g.exists("g:vscode") then
require("AnishDe12020.colorscheme")
	require("AnishDe12020.treesitter")
	require("AnishDe12020.gitsigns")
	require("AnishDe12020.plugin-config")
	require("AnishDe12020.nvim-tree")
	require("AnishDe12020.autosync")
	require("AnishDe12020.telescope")
	require("AnishDe12020.cmp")
	require("AnishDe12020.bufferline")
	require("AnishDe12020.luasnip")
	require("AnishDe12020.lsp")
else 
	require("AnishDe12020.vscode")
end