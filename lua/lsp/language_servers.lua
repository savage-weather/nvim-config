local lsp_installer = require("nvim-lsp-installer")
local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

lsp_installer.on_server_ready(function(server)
	local opts = { capabilities = capabilities }

	if server.name == "sumneko_lua" then
		opts = vim.tbl_deep_extend("force", {
			settings = { Lua = { diagnostics = { globals = { "vim" } } } },
		}, opts)
	end

	server:setup(opts)
end)

lsp_installer.settings({
	ui = {
		icons = {
			server_installed = "✓",
			server_pending = "➜",
			server_uninstalled = "✗",
		},
	},
})
