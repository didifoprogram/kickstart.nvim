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

-- make ctrl s save the current file
vim.api.nvim_set_keymap('n', '<C-s>', ':w<Cr>', { desc = 'Ctrl s to save' })

return {
  require 'custom.plugins.oil',
  require 'custom.plugins.tiny_line',
  require 'custom.plugins.rustacean',
  require 'custom.plugins.crates',
  require 'custom.plugins.lualine',
  require 'custom.plugins.todo-comments',
}
