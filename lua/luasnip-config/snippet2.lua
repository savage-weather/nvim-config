local ls = require("luasnip")

local latte = "fresh hot latte"

table.insert(ls.snippets.all, ls.parser.parse_snippet("sniper", "-- super saiko 2"))
table.insert(ls.snippets.all, ls.parser.parse_snippet("kinkou", "-- super saiko 8"))
table.insert(ls.snippets.all, ls.parser.parse_snippet("nvim", latte))

--- end of file ---
