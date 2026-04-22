return {

  "mason-org/mason-lspconfig.nvim",

  dependencies = { 
    "mason-org/mason.nvim",
    "neovim/nvim-lspconfig",
  },

    opts = {
      ensure_installed = { },
      automatic_enable = {
        "lua_ls",
        exclude = {}
      }
    },

}
