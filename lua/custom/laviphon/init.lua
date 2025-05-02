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

local api = require 'image'
api.enable()
local dashboardImage = vim.api.nvim_create_augroup('DashboardImage', { clear = true })
local img = api.from_file('/home/laviphon/Downloads/rwa_logo_static_v1.png', {
  width = 50,
  height = 50,
})
vim.api.nvim_create_autocmd({ 'VimEnter' }, {
  group = dashboardImage,
  callback = function()
    img:move(78, 1)
    img:render()
  end,
})
vim.api.nvim_create_autocmd({ 'BufEnter' }, {
  group = dashboardImage,
  callback = function()
    img:clear()
  end,
})
