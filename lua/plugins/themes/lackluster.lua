return {
  'slugbyte/lackluster.nvim',
  lazy = true,
  priority = 1000,
  init = function()
    local lackluster = require 'lackluster'
    lackluster.setup {
      disable_plugin = {},
      -- This section allows you to override specific highlight groups
      overrides = {
        -- Fixes the "invisible" selection in blink.cmp
        BlinkCmpMenuSelection = { bg = '#ffffff', fg = '#ffffff', bold = true },

        -- Optional: improves visibility of the matching letters
        BlinkCmpLabelMatch = { fg = '#789978', bold = true },
      },
    }
    -- vim.cmd.colorscheme 'lackluster'
    -- vim.cmd.colorscheme("lackluster-hack") -- my favorite
    -- vim.cmd.colorscheme("lackluster-mint")
  end,
}
