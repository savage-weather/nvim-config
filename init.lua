require("settings")
require("packer-config")
require("nvim-tree-config")
require("Comment-config")
require("lualine-config")
require("treesitter-config")
require("autopairs-config")
require("telescope-config")
require("gitsigns-config")
require("blankline-config")
require("toggleterm-config")
require("lsp")
require("luasnip-config")
require("null-ls-config")
require("mappings")

--Color Schemes
vim.cmd("colorscheme gruvbox")
-- vim.cmd("hi Normal guibg=NONE ctermbg=NONE") --transparent Document bg-color
vim.cmd(":highlight SignColumn guibg=NONE") --transparent SignColumn
vim.cmd(":highlight GitSignsAdd guifg=skyblue guibg=NONE") -- transparent GitSignsAdd
vim.cmd(":highlight GitSignsChange guifg=green guibg=NONE")
vim.cmd(":highlight GitSignsDelete guifg=red guibg=NONE")

-- Show Diagnostic in Insert Mode
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
	update_in_insert = true,
})

-- Colorizer Config
require("colorizer").setup()

-- Blankline Color
vim.cmd("highlight IndentBlanklineContextChar guifg=skyblue gui=nocombine")

-- Vim Func
vim.cmd([[
fun! DoSomething() "{{{
  :luafile ~/.config/nvim/lua/luasnip-config/init.lua
  :luafile ~/.config/nvim/lua/luasnip-config/snippet1.lua
  :luafile ~/.config/nvim/lua/luasnip-config/snippet2.lua
  :luafile ~/.config/nvim/lua/lsp/cmp.lua
endfunction "}}}

command! -nargs=* Meh call DoSomething()
]])

-- Submode

vim.cmd([[
" Create a submode to handle windows
" The submode is entered whith <Leader>k and exited with <Leader>
call submode#enter_with('WindowsMode', 'n', '', '<Leader>k', ':echo "windows mode"<CR>')
call submode#leave_with('WindowsMode', 'n', '', '<Leader>')
" Change of windows with hjkl
call submode#map('WindowsMode', 'n', '', 'j', '<C-w>j')
call submode#map('WindowsMode', 'n', '', 'k', '<C-w>k')
call submode#map('WindowsMode', 'n', '', 'h', '<C-w>h')
call submode#map('WindowsMode', 'n', '', 'l', '<C-w>l')
" Resize windows with <C-yuio> (interesting on azerty keyboards)
call submode#map('WindowsMode', 'n', '', 'u', '<C-w>-')
call submode#map('WindowsMode', 'n', '', 'i', '<C-w>+')
call submode#map('WindowsMode', 'n', '', 'y', '<C-w><')
call submode#map('WindowsMode', 'n', '', 'o', '<C-w>>')
" Move windows with <C-hjkl>
call submode#map('WindowsMode', 'n', '', '<C-j>', '<C-w>J')
call submode#map('WindowsMode', 'n', '', '<C-k>', '<C-w>K')
call submode#map('WindowsMode', 'n', '', '<C-h>', '<C-w>H')
call submode#map('WindowsMode', 'n', '', '<C-l>', '<C-w>L')
" close a window with c
call submode#map('WindowsMode', 'n', '', 'c', '<C-w>c')
" split windows with / and !
call submode#map('WindowsMode', 'n', '', '/', '<C-w>s')
call submode#map('WindowsMode', 'n', '', '!', '<C-w>v')

let g:submode_keep_leaving_key = 0
let g:submode_timeout = 0
]])
