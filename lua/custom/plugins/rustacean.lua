return {
  {
    'mrcjkb/rustaceanvim',
    version = '^6', -- Recommended
    lazy = true, -- This plugin is already lazy
    ft = 'rust',
  },
  vim.lsp.inlay_hint.enable(true),
}
