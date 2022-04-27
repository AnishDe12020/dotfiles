local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local packerBootstrap = false
if fn.empty(fn.glob(install_path)) > 0 then
	packerBootstrap = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
end

vim.cmd([[packadd packer.nvim]])

return require("packer").startup({
	function(use)
		-- packer
		use("wbthomason/packer.nvim")

		-- theme
		use("folke/tokyonight.nvim")
		use({
			"catppuccin/nvim",
			as = "catppuccin",
		})
		use("arcticicestudio/nord-vim")

		-- treesitter
		use({
			"nvim-treesitter/nvim-treesitter",
			run = ":TSUpdate",
		})

		-- Better file types
		use("pangloss/vim-javascript")
		use("elzr/vim-json")
		use("tpope/vim-markdown")

		-- UI
		use("ryanoasis/vim-devicons")
		use({
			"lukas-reineke/virt-column.nvim",
			config = function()
				require("virt-column").setup()
			end,
		})
		use({
			"nvim-lualine/lualine.nvim",
			requires = { "kyazdani42/nvim-web-devicons", opt = true },
		})
		use({
			"junegunn/fzf",
			run = function()
				vim.cmd([[call fzf#install()]])
			end,
		})
		use("junegunn/fzf.vim")
		use({
			"nvim-telescope/telescope.nvim",
			requires = { { "nvim-lua/plenary.nvim" } },
		})
		-- use("preservim/nerdtree")
		-- use("PhilRunninger/nerdtree-visual-selection")
		-- use("Xuyuanp/nerdtree-git-plugin")
		use("folke/trouble.nvim")
		use("metakirby5/codi.vim")
		use("akinsho/toggleterm.nvim")
		-- use("tiagofumo/vim-nerdtree-syntax-highlight")
		-- use("jistr/vim-nerdtree-tabs")
		-- use {
		--   'goolord/alpha-nvim',
		--   requires = { 'kyazdani42/nvim-web-devicons' },
		--   config = function ()
		--     require'alpha'.setup(require'alpha.themes.startify'.config)
		--   end
		-- }
		use("kyazdani42/nvim-tree.lua")
		use({ "akinsho/bufferline.nvim", requires = "kyazdani42/nvim-web-devicons" })
		use({
			"lewis6991/gitsigns.nvim",
			requires = {
				"nvim-lua/plenary.nvim",
			},
			-- tag = 'release' -- To use the latest release
		})
		-- tpope
		use("tpope/vim-surround")
		use("tpope/vim-commentary")
		use("tpope/vim-ragtag")
		use("tpope/vim-repeat")
		use("tpope/vim-unimpaired")
		use("tpope/vim-vinegar")
		use("tpope/vim-endwise")
		use("tpope/vim-fugitive")

		-- lsp
		use("neovim/nvim-lspconfig")
		use("williamboman/nvim-lsp-installer")
		use("hrsh7th/cmp-nvim-lsp")
		use("hrsh7th/cmp-buffer")
		use("hrsh7th/cmp-path")
		use("hrsh7th/cmp-cmdline")
		use("hrsh7th/nvim-cmp")
		use("jose-elias-alvarez/null-ls.nvim")
		-- use {'ms-jpq/coq_nvim', branch = 'coq'}
		-- use {'ms-jpq/coq.artifacts', branch = 'artifacts'}
		-- use {'ms-jpq/coq.thirdparty', branch = '3p'}
		-- use "lithammer/nvim-diagnosticls"

		-- coc
		use({ "neoclide/coc.nvim", branch = "release" })

		-- luasnip
		use("L3MON4D3/LuaSnip")
		use("rafamadriz/friendly-snippets")
		use("saadparwaiz1/cmp_luasnip")
		use("avneesh0612/react-nextjs-snippets")
		use("avneesh0612/thirdsnips")

		-- misc

		--     vim.g.coc_global_extensions = {
		--      "coc-emmet",
		--      "coc-css",
		--      "coc-html",
		--      "coc-json",
		--      "coc-prettier",
		--      "coc-tsserver"
		--     }
		--   end
		-- }
		-- use {"yaegassy/coc-tailwindcss", run = "yarn install --frozen-lockfile && yarn build", branch = "feat/support-v3-and-use-server-pkg"}
		use("wakatime/vim-wakatime")
		use("github/copilot.vim")
		use("ellisonleao/glow.nvim")
		use("mattn/emmet-vim")
		use("jiangmiao/auto-pairs")
		use("yuttie/comfortable-motion.vim")
		use("mhinz/vim-startify")
		use("moll/vim-bbye")
		use("alvan/vim-closetag")
		use({ "turbio/bracey.vim", run = "npm install --prefix server" })
		use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" })
		use("KabbAmine/vCoolor.vim")
		use({
			"phaazon/hop.nvim",
			branch = "v1", -- optional but strongly recommended
			config = function()
				-- you can configure Hop the way you like here; see :h hop-config
				require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
			end,
		})

		if packerBootstrap then
			require("packer").sync()
		end
	end,
	config = {
		display = {
			open_fn = function()
				return require("packer.util").float({ border = "rounded", style = "minimal" })
			end,
		},
	},
})
