require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "typescript", "javascript",
    "html", "css", "scss",
    "lua"
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  -- other Plug-ins
  autotag = { enable = true },
  rainbow = {
    enable = true,
  },
}
