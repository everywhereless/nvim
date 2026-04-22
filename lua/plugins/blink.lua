return {

  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets' },
  version = '1.*',
  opts = {

    keymap = { preset = 'default' },

    appearance = {
      nerd_font_variant = 'mono'
    },

    completion = { 

      documentation = { auto_show = false },
      ghost_text = { enabled = true },

      keyword = { range = 'full' },

      accept = { auto_brackets = { enabled = true } },

      list = { 
        selection = { 
          preselect = false, 
          auto_insert = false, 
        }, 
      },

    },

    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer', },
    },

    snippets = { preset = 'luasnip' },
    signature = { enabled = true },

    fuzzy = { implementation = "prefer_rust_with_warning" }

  },

  opts_extend = { "sources.default" }

}

