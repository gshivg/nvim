-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("conform").setup({
  formatters_by_ft = {
    blade = { "blade-formatter" },
  },
})
