local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("lazy").setup({
  spec = {
    { import = "plugins" },
  },

  install = { colorscheme = { "habamax" } },

  checker = { enabled = true },


  root = vim.fn.stdpath("data") .. "/lazy", 
  defaults = {
    lazy = false,
    version = nil,
    cond = nil,
  },

  local_spec = true,
  lockfile = vim.fn.stdpath("config") .. "/lazy-lock.json",
  concurrency = jit.os:find("Windows") and (vim.uv.available_parallelism() * 2) or nil,

  git = {
    log = { "-8" },
    timeout = 120,
    url_format = "https://github.com/%s.git",
    filter = true,
    throttle = {
      enabled = false,
      rate = 2,
      duration = 5 * 1000,
    },
    cooldown = 0,
  },

  pkg = {
    enabled = true,
    cache = vim.fn.stdpath("state") .. "/lazy/pkg-cache.lua",
    sources = {
      "lazy",
      "rockspec",
      "packspec",
    },
  },

  rocks = {
    enabled = true,
    root = vim.fn.stdpath("data") .. "/lazy-rocks",
    server = "https://lumen-oss.github.io/rocks-binaries/",
    hererocks = nil,
  },

  dev = {
    path = "~/projects",
    patterns = {},
    fallback = false,
  },

  ui = {
    size = { width = 0.8, height = 0.8 },
    wrap = true,
    border = "none",
    backdrop = 60,
    title = nil,
    title_pos = "center",
    pills = true,
    icons = {
      cmd = " ",
      config = "",
      debug = "● ",
      event = " ",
      favorite = " ",
      ft = " ",
      init = " ",
      import = " ",
      keys = " ",
      lazy = "󰒲 ",
      loaded = "●",
      not_loaded = "○",
      plugin = " ",
      runtime = " ",
      require = "󰢱 ",
      source = " ",
      start = " ",
      task = "✔ ",
      list = {
        "●",
        "➜",
        "★",
        "‒",
      },
    },

  browser = nil,
    throttle = 1000 / 30,
    custom_keys = {

      ["<localleader>l"] = {
        function(plugin)
          require("lazy.util").float_term({ "lazygit", "log" }, {
            cwd = plugin.dir,
          })
        end,
        desc = "Open lazygit log",
      },

      ["<localleader>i"] = {
        function(plugin)
          Util.notify(vim.inspect(plugin), {
            title = "Inspect " .. plugin.name,
            lang = "lua",
          })
        end,
        desc = "Inspect Plugin",
      },

      ["<localleader>t"] = {
        function(plugin)
          require("lazy.util").float_term(nil, {
            cwd = plugin.dir,
          })
        end,
        desc = "Open terminal in plugin dir",
      },
    },
  },

  headless = {
    process = true,
    log = true,
    task = true,
    colors = true,
  },
  diff = {
    -- diff command <d> can be one of:
    -- * browser: opens the github compare view. Note that this is always mapped to <K> as well,
    --   so you can have a different command for diff <d>
    -- * git: will run git diff and open a buffer with filetype git
    -- * terminal_git: will open a pseudo terminal with git diff
    -- * diffview.nvim: will open Diffview to show the diff
    cmd = "git",
  },
  checker = {
    enabled = false,
    concurrency = nil,
    notify = true,
    frequency = 3600,
    check_pinned = false,
  },
  change_detection = {

    enabled = true,
    notify = true,
  },
  performance = {
    cache = {
      enabled = true,
    },
    reset_packpath = true,
    rtp = {
      reset = true, -- reset the runtime path to $VIMRUNTIME and your config directory
      ---@type string[]
      paths = {}, -- add any custom paths here that you want to includes in the rtp
      ---@type string[] list any plugins you want to disable here
      disabled_plugins = {
        -- "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        -- "tarPlugin",
        -- "tohtml",
        -- "tutor",
        -- "zipPlugin",
      },
    },
  },

  readme = {
    enabled = true,
    root = vim.fn.stdpath("state") .. "/lazy/readme",
    files = { "README.md", "lua/**/README.md" },
    skip_if_doc_exists = true,
  },
  state = vim.fn.stdpath("state") .. "/lazy/state.json",
  profiling = {
    loader = false,
    require = false,
  }

})


