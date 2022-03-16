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
