local set = vim.opt

set.number = true
set.relativenumber = true
set.cursorline = false

set.expandtab = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
vim.wo.signcolumn = 'yes'

set.hlsearch = false
--vim.opt.paste = [destroy all insert mode remaps]
--any attempts to disable auto comment like :set formatoptions-=r
--will result in the destruction of insert mode remaps
set.mouse = "a"

set.ignorecase = true
set.smartcase = true

set.wrap = false
set.scrolloff = 12

set.fileencoding = 'utf-8'
set.termguicolors = true

set.hidden = true
set.swapfile = false
set.backup = false

-- Show Diagnostic in Insert Mode
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    update_in_insert = true,
  }
)
