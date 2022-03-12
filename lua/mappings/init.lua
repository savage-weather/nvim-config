local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = false }
local term_opts = { silent = true }

vim.g.mapleader = ' '

-- Remaps
keymap("n", "<C-h>", ":echo 'hello'", opts)
keymap("n", "<C-s>", ":w<cr>", opts)
keymap("i", "kk", "<Esc>", opts)
keymap("i", "kj", "<Esc>", opts)
keymap("i", "<C-s>", "<Esc>:w<cr>", opts)

keymap("n", "_R", ":Reload<cr>", opts)
keymap("n", "_r", ":luafile %<cr>", opts)
keymap("n", "<leader>r", ":luafile %<cr>", opts)

keymap('n', '<leader>q', ':q', opts)

-- Move Cursor Between Windows
keymap("n", "<C-j>", "<c-w>j", opts)
keymap("n", "<C-k>", "<c-w>k", opts)
keymap("n", "<C-h>", "<c-w>h", opts)
keymap("n", "<C-l>", "<c-w>l", opts)
keymap("n", "<leader>v", "<c-w>v<c-w>l", opts)
keymap("n", "<leader>s", "<c-w>s<c-w>j", opts)

print("__Remapping Done__")
-- Plug-ins Remaps
keymap('n', '<leader>e', ':NvimTreeToggle<cr>', opts)
keymap('n', '<leader>f', ':Telescope find_files<cr>', opts)
keymap('n', '<c-g>', ':Telescope live_grep<cr>', opts)
keymap('n', '<c-f>', ':Telescope find_files<cr>', opts)
keymap('n', '<leader>g', ':Telescope live_grep<cr>', opts)
keymap('n', '<leader>b', ':Telescope buffers<cr>', opts)
keymap('n', '<leader>w', '<Plug>(easymotion-bd-w)', opts)
keymap('n', '<leader>S', ':PackerSync', opts)
