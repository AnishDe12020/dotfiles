vim.g.javascript_plugin_jsdoc = 1
vim.g.javascript_plugin_ngdoc = 1
vim.g.javascript_plugin_flow  = 1

vim.g.javascript_conceal_function             = 'ƒ'
vim.g.javascript_conceal_null                 = 'ø'
vim.g.javascript_conceal_this                 = '@'
vim.g.javascript_conceal_return               = '⇚'
vim.g.javascript_conceal_undefined            = '¿'
vim.g.javascript_conceal_NaN                  = 'ℕ'
vim.g.javascript_conceal_prototype            = '¶'
vim.g.javascript_conceal_static               = '•'
vim.g.javascript_conceal_super                = 'Ω'
vim.g.javascript_conceal_arrow_function       = '⇒'
vim.g.javascript_conceal_noarg_arrow_function = '🞅'
vim.g.javascript_conceal_underscore_arrow_function = '🞅'

vim.g.markdown_fenced_languages = {'html', 'css', 'js=javascript', 'jsx=javascript', 'ts=typescript', 'tsx=typescript', 'json', 'yaml', 'toml', 'xml'}
vim.g.comfortable_motion_scroll_down_key = 'j'
vim.g.comfortable_motion_scroll_up_key = 'k'

vim.g.copilot_filetypes = {['*'] = true}
vim.g.copilot_no_tab_map = true

require("lualine").setup {
  options = {
    icons_enable = true,
    theme = "tokyonight",
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
  },
  extensions = {
    "fugitive",
    "fzf",
    "nerdtree",
    "toggleterm",
  },
}

vim.g.tokyonight_style = "night"
vim.g.tokyonight_lualine_bold = true

-- vim.g.startify_session_dir = "~/.config/nvim/sessions"
vim.g.startify_session_autoload = 1
vim.g.startify_session_delete_buffers = 1
vim.g.startify_change_to_vcs_root = 1
vim.g.startify_fortune_use_unicode = 1
vim.g.startify_session_persistence = 1
vim.g.startify_enable_special = 0
vim.cmd([[
let g:startify_lists = [
          \ { 'type': 'sessions',     'header': ['   Sessions']            },
          \ { 'type': 'bookmarks',       'header': ['   Bookmarks'] },
          \ { 'type': 'files',  'header': ['   Files']       },
          \ { 'type': 'dir', 'header': ['   Current Directory '. getcwd()]},
          \ ]
]])

vim.cmd([[
let g:startify_session_before_save = [
        \ 'silent! :tabdo NERDTreeClose',
        \ 'silent! :bufdo NERDTreeClose'
        \ ]
]])

-- vim.cmd([[
-- -- let g:startify_custom_header = [

-- --  /$$   /$$                                /$$                        /$$$  
-- -- | $$$ | $$                               |__/                       |_  $$ 
-- -- | $$$$| $$  /$$$$$$   /$$$$$$  /$$    /$$ /$$ /$$$$$$/$$$$        /$$ \  $$
-- -- | $$ $$ $$ /$$__  $$ /$$__  $$|  $$  /$$/| $$| $$_  $$_  $$      |__/  | $$
-- -- | $$  $$$$| $$$$$$$$| $$  \ $$ \  $$/$$/ | $$| $$ \ $$ \ $$            | $$
-- -- | $$\  $$$| $$_____/| $$  | $$  \  $$$/  | $$| $$ | $$ | $$       /$$  /$$/
-- -- | $$ \  $$|  $$$$$$$|  $$$$$$/   \  $/   | $$| $$ | $$ | $$      |__//$$$/ 
-- -- |__/  \__/ \_______/ \______/     \_/    |__/|__/ |__/ |__/         |___/  
                                                                           
-- -- ]
-- -- ]])

require("toggleterm").setup {
  open_mapping = [[<C-\>]],
}

local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})

