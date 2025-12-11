-- diable recording
vim.api.nvim_set_keymap('n', 'q', '<Nop>', { noremap = true, silent = true })

-- Toggle line comment keybind Ctrl + / (using the actual keycode)
vim.api.nvim_set_keymap('n', '<C-/>', 'gcc', { desc = 'ctrl / to comment line' })
vim.api.nvim_set_keymap('v', '<C-/>', 'gcc', { desc = 'ctrl / to comment line' })

-- clipboard things
-- vim.keymap.set('n', 'd', '"_d', { noremap = true, silent = true }) -- Delete without overwriting clipboard
-- vim.keymap.set('v', 'd', '"_d', { noremap = true, silent = true }) -- Same for visual mode
-- vim.keymap.set('n', 'x', '"_x', { noremap = true, silent = true }) -- Cut without overwriting clipboard
-- vim.keymap.set('n', 'c', '"_c', { noremap = true, silent = true }) -- Change without overwriting clipboard

-- make ctrl s save the current file
vim.api.nvim_set_keymap('n', '<C-s>', ':w<Cr>', { desc = 'Ctrl s to save' })

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.diagnostic.config { virtual_text = false }
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', '<leader>q', function()
  vim.diagnostic.open_float(nil, { focusable = true })
end, { desc = 'Show diagnostic in a [Q]uick popup' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
