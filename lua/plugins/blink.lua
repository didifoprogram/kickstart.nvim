return {
  {
    'saghen/blink.cmp',
    event = 'VimEnter',
    dependencies = 'rafamadriz/friendly-snippets',

    -- use a release tag to download pre-built binaries
    version = 'v1.*',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = { preset = 'default', ['<Tab>'] = { 'accept' } },

      -- experimental signature help support
      signature = { enabled = true, window = { border = 'rounded' } },

      completion = {
        ghost_text = { enabled = false },
        documentation = {
          treesitter_highlighting = true,
          window = {
            border = vim.g.borderStyle,
            min_width = 15,
            max_width = 45,
            max_height = 10,
          },
          auto_show = true,
          auto_show_delay_ms = 250,
        },
        menu = {
          border = 'single',
          draw = {
            gap = 1,
            columns = {
              -- { 'label', 'label_description', gap = 1 },
              -- { 'kind', 'kind_icon', gap = 1 },
              { 'kind_icon', 'label', gap = 1 },
              { 'kind' },
            },
            components = {
              label = {
                text = function(ctx)
                  return require('colorful-menu').blink_components_text(ctx)
                end,
                highlight = function(ctx)
                  return require('colorful-menu').blink_components_highlight(ctx)
                end,
              },
              kind_icon = {
                text = function(ctx)
                  local kind_icon, _, _ = require('mini.icons').get('lsp', ctx.kind)
                  return kind_icon
                end,
              },
            },
          },
        },
      },

      appearance = {
        -- Sets the fallback highlight groups to nvim-cmp's highlight groups
        -- Useful for when your theme doesn't support blink.cmp
        -- will be removed in a future release
        use_nvim_cmp_as_default = false,
        -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
        -- Adjusts spacing to ensure icons are aligned
        nerd_font_variant = 'mono',
      },

      -- default list of enabled providers defined so that you can extend it
      -- elsewhere in your config, without redefining it, via `opts_extend`
      sources = {
        default = { 'lazydev', 'lsp', 'path', 'snippets', 'buffer' },
        providers = {
          snippets = {
            min_keyword_length = 1, -- don't show when triggered manually, useful for JSON keys
            score_offset = -1,
          },
          lazydev = { name = 'LazyDev', module = 'lazydev.integrations.blink', score_offset = 100 },
          path = {
            opts = {
              get_cwd = function(_)
                return vim.fn.getcwd()
              end,
            },
          },
        },
        -- optionally disable cmdline completions
        -- cmdline = {},
      },

      fuzzy = { implementation = 'prefer_rust_with_warning', sorts = { 'exact', 'score', 'sort_text' } },
    },
    -- allows extending the providers array elsewhere in your config
    -- without having to redefine it
    opts_extend = { 'sources.default' },
  },
}
