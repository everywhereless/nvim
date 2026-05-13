return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      sh = { "shfmt" },
      lua = { "stylua" },
      css = { "prettierd" },
      html = { "superhtml" },
      python = { "black" },
      --typst = { "typstfmt" },
    },
    format_on_save = {
      timeout_ms = 10000,
      lsp_format = "fallback",
    },
    formatters = {
      shfmt = {
        prepend_args = { "-i", "0" },
      },
      stylua = {
        prepend_args = {
          "--indent-type",
          "Spaces",
          "--indent-width",
          "2",
        },
      },
      prettierd = {
        prepend_args = { "--tab-width", "2" },
      },
    },
  },
}
