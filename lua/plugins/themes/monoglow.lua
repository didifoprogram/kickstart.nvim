return {
  {
    'wnkz/monoglow.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      require('monoglow').setup {
        on_colors = function(colors)
          colors.glow = '#9B69C3'
        end,

        on_highlights = function(hl, c)
          -- hl is the table of highlight groups
          -- c is the color palette

          hl.BlinkCmpMenuSelection = {
            bg = '#333333', -- Or use c.bg_highlight for a theme-consistent gray
            -- fg = 'NONE', -- Ensures the syntax colors stay visible
            bold = true,
          }

          -- Makes the matching text "glow" or stand out
          hl.BlinkCmpLabelMatch = {
            fg = c.light_green,
            bold = true,
          }
        end,
      }

      -- vim.cmd [[colorscheme monoglow]]
    end,
  },
}
