return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = function()
        local is_dark = vim.o.background == "dark"
        return {
            style = is_dark and "storm" or "day",
            transparent = true,
        }
    end,
    config = function(_, opts)
        require("tokyonight").setup(opts)
        vim.cmd([[colorscheme tokyonight]])
    end,
}
