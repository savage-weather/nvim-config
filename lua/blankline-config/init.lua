require("indent_blankline").setup {
  -- for example, context is off by default, use this to turn it on
  show_current_context = true,
  show_currejt_context_start = true,
}

vim.cmd("highlight IndentBlanklineContextChar guifg=#20cfd4 gui=nocombine")
