return {
  --   {
  --     'nvimtools/none-ls.nvim',
  --     config = function()
  --       local null_ls = require 'null-ls'
  --       require('null-ls').setup {
  --         sources = {
  --           null_ls.builtins.formatting.stylua,
  --           null_ls.builtins.completion.spell,
  --           null_ls.builtins.formatting.prettierd,
  --           -- require 'none-ls.diagnostics.eslint', -- requires none-ls-extras.nvim
  --         },
  --       }
  --     end,
  --   },
}
