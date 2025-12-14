vim.lsp.config.gopls = {
  cmd = { 'gopls' },
  root_markers = { 'go.work', 'go.mod', '.git' },
  filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
  settings = {
    gopls = {
      ['ui.inlayhint.hints'] = {
        compositeLiteralFields = true,
        constantValues = true,
        parameterNames = true,
        assignVariableTypes = true,
      },
    },
  },
}
