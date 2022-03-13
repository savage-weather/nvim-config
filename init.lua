require('settings')
require('packer-config')
require('nvim-tree-config')
require('Comment-config')
require('lualine-config')
require('treesitter-config')
require('autopairs-config')
require('telescope-config')
require('lsp')
require('mappings')
require('whichkeys-config')

--Color Schemes
--require('colorschemes-config.nightfox')
vim.cmd('colorscheme gruvbox')
vim.cmd('hi Normal guibg=NONE ctermbg=NONE')
vim.cmd(':highlight SignColumn guibg=NONE')

-- Show Diagnostic in Insert Mode
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    update_in_insert = true,
  }
)

-- QuickScope Config
-- Trigger a highlight only when pressing f and F.
vim.cmd("let g:qs_highlight_on_keys = ['f', 'F']")
vim.cmd("highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline")
vim.cmd("highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline")
