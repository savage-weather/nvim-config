local ls = require("luasnip")
ls.snippets = {
	all = {
		ls.parser.parse_snippet("snake", "zzzsnake"),
		ls.parser.parse_snippet("kinky", "fuck me harder"),
	},
	lua = {},
}

print("started to snip")
require("luasnip-config/snippet1")
require("luasnip-config/snippet2")
