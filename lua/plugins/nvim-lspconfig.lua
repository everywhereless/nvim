return {

  "neovim/nvim-lspconfig",
  dependencies = {
    'saghen/blink.cmp',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
  },

  opts = {
    servers = {
      lua_ls = {}
    }
  },

  config = function(_, opts)
    for server, config in pairs(opts.servers) do
      config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
      vim.lsp.config(server, config)
      vim.lsp.enable(server)
    end
  end

}
