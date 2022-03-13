local lsp_installer = require("nvim-lsp-installer")
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local function on_attach(client)
  client.resolved_capabilities.document_formatting = false
  client.resolved_capabilities.document_range_formatting = false
  capabilities = capabilities
end

lsp_installer.on_server_ready(function(server)
  local opts = { on_attach = on_attach }

  if server.name == "sumneko_lua" then
    opts = vim.tbl_deep_extend("force", {
      settings = { Lua = { diagnostics = {globals = {'vim'}} } }
    }, opts)
  end

  server:setup(opts)
end)

lsp_installer.settings({
  ui = {
    icons = {
      server_installed = "✓",
      server_pending = "➜",
      server_uninstalled = "✗"
    }
  }
})
