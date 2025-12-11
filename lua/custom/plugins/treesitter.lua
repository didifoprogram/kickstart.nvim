-- Start treesitter
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'go', 'lua', 'bash', 'html', 'rust', 'markdown' },
  callback = function()
    vim.treesitter.start()
  end,
})

return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    branch = 'main',
    build = ':TSUpdate',
    opts = {
      ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc', 'rust' },
      auto_install = true,
      highlight = {
        enable = true,
      },
      ident = {
        enable = true,
      },
    },
  },
}
