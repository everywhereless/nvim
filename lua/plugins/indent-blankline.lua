return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  config = function()
    vim.api.nvim_set_hl(0, "IblIndent", { fg = "#56B6C2" })
    require("ibl").setup()
  end,
}
