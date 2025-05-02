-- setup our custom plugins
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

-- empty setup using defaults
require('nvim-tree').setup {
  view = {
    width = 30,
  },
}

-- key remaps
local map = vim.api.nvim_set_keymap
opts = { noremap = true, silent = true }
-- barbar remap
map('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<Tab>', '<Cmd>BufferNext<CR>', opts)
map('n', '<leader>x', '<Cmd>BufferClose<CR>', opts)
-- nvim tree map

map('n', '<C-n>', '<Cmd>NvimTreeToggle<CR>', opts)
