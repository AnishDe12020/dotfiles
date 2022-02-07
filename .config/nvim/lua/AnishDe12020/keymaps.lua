
local keymap = vim.api.nvim_set_keymap

local function makeMap(mode)
	return function(lhs, rhs)
		keymap(mode, lhs, rhs, {noremap = true, silent = true})
	end
end

local imap = makeMap 'i'
local nmap = makeMap 'n'
local tmap = makeMap 't'
local xmap = makeMap 'x'
local map = makeMap ''

nmap('<space>', '')
vim.g.mapleader = ' '

-- Smooth scroll
-- nmap('<C-d>', ':call comfortable_motion#flick(100)<CR>')
-- nmap('<C-u>', ':call comfortable_motion#flick(-100)<CR>')
-- nmap('<C-f>', ':call comfortable_motion#flick(200)<CR>')
-- nmap('<C-b>', ':call comfortable_motion#flick(-200)<CR>')
map('<ScrollWheelDown>', ':call comfortable_motion#flick(20)<CR>')
map('<ScrollWheelUp>', '  :call comfortable_motion#flick(-20)<CR>')

-- NerdTree
nmap("<C-S-e>", ":NERDTreeTabsToggle<CR>")

-- Terminal
tmap("<Esc>", "<C-\\><C-n>")

-- Use Alt + HJKL to move between panes
tmap("<A-h>", "<C-\\><C-n><C-w>h")
tmap("<A-j>", "<C-\\><C-n><C-w>j")
tmap("<A-k>", "<C-\\><C-n><C-w>k")
tmap("<A-l>", "<C-\\><C-n><C-w>l")
nmap("<A-h>", "<C-w>h")
nmap("<A-j>", "<C-w>j")
nmap("<A-k>", "<C-w>k")
nmap("<A-l>", "<C-w>l")

-- Use Alt + arrow keys to move between panes
tmap("<A-Up>", "<C-\\><C-n><C-w>Up")
tmap("<A-Down>", "<C-\\><C-n><C-w>Down")
tmap("<A-Left>", "<C-\\><C-n><C-w>Left")
tmap("<A-Right>", "<C-\\><C-n><C-w>Right")
nmap("<A-Up>", "<C-w>Up")
nmap("<A-Down>", "<C-w>Down")
nmap("<A-Left>", "<C-w>Left")
nmap("<A-Right>", "<C-w>Right")

-- FZF
-- nmap("<C-p>", ":FZF<CR>")

-- Telescope
nmap("<C-p>", ":Telescope find_files<CR>")

-- keymap('i', '<C-c>', '<esc>:call copilot#Accept()<cr>i', {noremap = true, silent = true, script = true, nowait = true})
-- for some reason only viml works
vim.cmd[[
	imap <script><silent><nowait><expr> <Tab> copilot#Accept()
	map <leader>D :put =strftime('# %a %Ym-%d %H:%M:%S%z')<CR>
]]
