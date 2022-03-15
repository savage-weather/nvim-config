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
require("null-ls-config")
require("mappings")

--Color Schemes
vim.cmd("colorscheme gruvbox")
vim.cmd("hi Normal guibg=NONE ctermbg=NONE") --transparent Document bg-color
vim.cmd(":highlight SignColumn guibg=NONE") --transparent SignColumn

-- Show Diagnostic in Insert Mode
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
	update_in_insert = true,
})

-- QuickScope Config
-- Trigger a highlight only when pressing f and F.
vim.cmd("let g:qs_highlight_on_keys = ['f', 'F']")
vim.cmd("highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline")
vim.cmd("highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline")

-- Colorizer Config
require("colorizer").setup()

-- Sneak config
vim.cmd("let g:sneak#label = 1")
