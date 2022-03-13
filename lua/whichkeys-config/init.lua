local wk = require("which-key")
local opts = { prefix = 'leader' }

local mappings = {
  q = ":q"
}

wk.register(mappings, opts)
