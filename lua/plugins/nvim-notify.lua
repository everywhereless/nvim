return {

  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup({
      render = "default",
      stages = "fade_in_slide_out",
    })
    vim.notify = require("notify")
  end,
}
