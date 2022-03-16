local ls = require("luasnip")

table.insert(ls.snippets.all, ls.parser.parse_snippet("expand", "-- this is superhaha was expanded!"))
