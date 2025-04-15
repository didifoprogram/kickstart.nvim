-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--
-- diable recording
vim.api.nvim_set_keymap('n', 'q', '<Nop>', { noremap = true, silent = true })

-- Toggle line comment keybind Ctrl + /
vim.api.nvim_set_keymap('n', '<C-_>', 'gcc', { desc = 'ctrl / to comment line' })
vim.api.nvim_set_keymap('n', '<C-/>', 'gcc', { desc = 'ctrl / to comment line' })
vim.api.nvim_set_keymap('v', '<C-/>', 'gcc', { desc = 'ctrl / to comment line' })
vim.api.nvim_set_keymap('x', '<C-/>', 'gcc', { desc = 'ctrl / to comment line' })

-- clipboard things
-- vim.keymap.set('n', 'd', '"_d', { noremap = true, silent = true }) -- Delete without overwriting clipboard
-- vim.keymap.set('v', 'd', '"_d', { noremap = true, silent = true }) -- Same for visual mode
-- vim.keymap.set('n', 'x', '"_x', { noremap = true, silent = true }) -- Cut without overwriting clipboard
-- vim.keymap.set('n', 'c', '"_c', { noremap = true, silent = true }) -- Change without overwriting clipboard

-- make ctrl s save the current file
vim.api.nvim_set_keymap('n', '<C-s>', ':w<Cr>', { desc = 'Ctrl s to save' })

return {
  require 'custom.plugins.oil',
  require 'custom.plugins.tiny_line',
  require 'custom.plugins.rustacean',
  require 'custom.plugins.crates',
  require 'custom.plugins.lualine',
  require 'custom.plugins.todo-comments',
  -- require 'custom.plugins.illuminate',
  require 'custom.plugins.snacks',
}
