local keymap = vim.api.nvim_set_keymap

local function makeMap(mode)
	return function(lhs, rhs, isnoremap)
		keymap(mode, lhs, rhs, { noremap = isnoremap or true, silent = true })
	end
end

local imap = makeMap("i")
local nmap = makeMap("n")
local tmap = makeMap("t")
local xmap = makeMap("x")
local vmap = makeMap("v")
local map = makeMap("")

nmap("<space>", "")
vim.g.mapleader = " "

-- Smooth scroll
-- nmap('<C-d>', ':call comfortable_motion#flick(100)<CR>')
-- nmap('<C-u>', ':call comfortable_motion#flick(-100)<CR>')
-- nmap('<C-f>', ':call comfortable_motion#flick(200)<CR>')
-- nmap('<C-b>', ':call comfortable_motion#flick(-200)<CR>')
map("<ScrollWheelDown>", ":call comfortable_motion#flick(20)<CR>")
map("<ScrollWheelUp>", ":call comfortable_motion#flick(-20)<CR>")

-- NerdTree
nmap("<leader>nt", ":NERDTreeTabsToggle<CR>")

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
vim.cmd([[
	imap <script><silent><nowait><expr> <C-c> copilot#Accept()
	map <leader>D :put =strftime('# %a %Ym-%d %H:%M:%S%z')<CR>
]])

-- Split
nmap("vs", ":vs<CR>")
nmap("sp", ":sp<CR>")

-- Tabs
nmap("tn", ":tabnew<CR>")
nmap("tk", ":tabnext<CR>")
nmap("tj", ":tabprevious<CR>")
nmap("tl", ":tablast<CR>")
nmap("to", ":tabo<CR>") -- closes all tabs except current
nmap("tq", ":tabclose<CR>")

-- Coc keymaps
-- nmap("<leader>.", ":CocAction<CR>", false)
-- nmap("<leader>,", ":call CocActionAsync('refactor')<CR>", false)
-- nmap("<leader>f", ":call CocActionAsync('format')<CR>", false)
-- nmap("<leader>]", ":call CocActionAsync('jumpDefinition')<CR>", false)
-- nmap("<leader>cv", ":call CocActionAsync('rename')<CR>", false)

-- Reload config
nmap("<leader>cr", ":source $MYVIMRC<CR>", false)

-- Null LS
nmap("<leader>f", ":Format<CR>")

-- Move text
nmap("<A-j>", ":m .+1<CR>")
nmap("<A-k>", ":m .-2<CR>")

vmap("<A-j>", ":m .+1<CR>")
vmap("<A-k>", ":m .-2<CR>")

xmap("J", ">+1gv-gv")
xmap("K", "<-2gv-gv")
-- xmap("<A-j>", ">+1<CR>gv-gv")
-- xmap("<A-k>", "<-2<CR>gv-gv")

