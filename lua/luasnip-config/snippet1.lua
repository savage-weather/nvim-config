local ls = require("luasnip")
local s = ls.s
local i = ls.insert_node

local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

local sampleSimppet = s("req", fmt("local {} = require('{}')", { i(1, "default"), rep(1) }))

table.insert(ls.snippets.all, sampleSimppet)
