return {
  {
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if prefer nvim-web-devicons
    config = function()
      require('oil').setup {}

      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent dir' })
    end,
  },
}