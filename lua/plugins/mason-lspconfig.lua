return {

  "mason-org/mason-lspconfig.nvim",

  dependencies = {
    "mason-org/mason.nvim",
    "neovim/nvim-lspconfig",
  },

  opts = {
    ensure_installed = { "vtsls", "cssls", "html" },
    automatic_enable = {
      --[["lua_ls",
	"vtsls",
	"cssls",
	"html",]]
      exclude = {},
    },
  },
}
