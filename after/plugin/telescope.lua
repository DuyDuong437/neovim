local lga_actions = require("telescope-live-grep-args.actions")
require("telescope").setup({
  defaults = {
  layout_strategy='vertical',
  layout_config={width=0.8}}
})
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
vim.keymap.set('n', '<leader>st', builtin.live_grep, {})
vim.keymap.set('n', '<leader>sb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>sg', builtin.git_files, {})
