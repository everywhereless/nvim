return {

  "chomosuke/typst-preview.nvim",
  lazy = false,
  version = '1.*',
  opts = {
    debug = false,
    open_cmd = nil,
    port = 8000,
    host = "127.0.0.1",
    dependencies_bin = {
      tinymist = "/data/data/com.termux/files/usr/bin/tinymist",
      websocat = "/data/data/com.termux/files/usr/bin/websocat",
    },
  },

}
