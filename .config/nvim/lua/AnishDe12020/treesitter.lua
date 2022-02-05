require 'nvim-treesitter.configs'.setup {
	ensure_installed = 'maintained',
	highlight = {
		enable = true,
	},
	textobjects = {
		select = {
			enable = true,
			lookahead = true,
			keymaps = {
				['af'] = '@function.outer',
				['if'] = '@function.inner',
				['il'] = '@loop.inner',
				['al'] = '@loop.outer',
				['i?'] = '@conditional.inner',
				['a?'] = '@conditional.outer',
				['ic'] = '@call.inner',
				['ac'] = '@call.outer',
				['ib'] = '@block.inner',
				['ab'] = '@block.outer',
				['ip'] = '@parameter.inner',
				['ap'] = '@parameter.outer'
			}
		},
		swap = {
			enable = true,
			swap_next = {
				['sp'] = '@parameter.inner',
			},
			swap_previous = {
				['Sp'] = '@parameter.inner',
			}
		},
		move = {
			enable = true,
			set_jumps = true,
			goto_next_start = {
				[']m'] = '@function.outer',
				[']]'] = '@class.outer',
			},
			goto_next_end = {
				[']M'] = '@function.outer',
				[']['] = '@class.outer',
			},
			goto_previous_start = {
				['[m'] = '@function.outer',
				['[['] = '@class.outer',
			},
			goto_previous_end = {
				['[M'] = '@function.outer',
				['[]'] = '@class.outer',
			}
		},
		lsp_interop = {
			enable = true,
			border = 'rounded',
			peek_definition_code = {
				['<leader>df'] = '@function.outer',
				['<leader>dF'] = '@class.outer',
			},
		}
	},
	playground = {
		enable = true,
	},
	refactor = {
		highlight_definitions = {
			enable = true,
		},
		highlight_current_scope = {
			enable = true,
		},
		smart_rename = {
			enable = true,
			keymaps = {
				smart_rename = 'grn'
			}
		},
		navigation = {
			enable = true,
			keymaps = {
				goto_definition = '<leader>gd',
				list_definitions = '<leader>gl',
				list_definitions_toc = '<leader>gL',
				goto_next_usage = '<leader>gu',
				goto_previous_usage = '<leader>gU',
			}
		}
	}
}

vim.cmd [[
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
]]

