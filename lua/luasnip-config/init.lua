local ls = require("luasnip")
ls.snippets = {
	all = {
		ls.parser.parse_snippet("snake", "fucking snake"),
		ls.parser.parse_snippet("kinky", "fuck me harder"),
	},
	lua = {},
}

-- Config
ls.config.set_config({
	history = true, --keep around last snippet local to jump back
	updateevents = "TextChanged,TextChangedI", --update changes as you type
	enable_autosnippets = true,
})

-- Insert Mode Remap
vim.keymap.set({ "i", "s" }, "<C-k>", function()
	if ls.expand_or_jumpable() then
		ls.expand_or_jump()
	end
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-j>", function()
	if ls.expand_or_jumpable(-1) then
		ls.jump(-1)
	end
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-i>", function()
	if ls.choice_active then
		ls.change_choice(1)
	end
end)

-- Require Snippets
require("luasnip-config/snippet1")
require("luasnip-config/snippet2")
