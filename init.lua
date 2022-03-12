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
