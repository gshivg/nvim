-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("luasnip.loaders.from_vscode").lazy_load({ paths = "~/.config/nvim/LuaSnip/", include = { "dart" } })

require("conform").setup({
  format_on_save = function(bufnr)
    -- Disable with a global or buffer-local variable
    if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
      return
    end
    return { timeout_ms = 500, lsp_format = "fallback" }
  end,
  format_after_save = {
    lsp_format = "fallback",
  },
  notify_no_formatters = true,
  notify_on_error = true,
  formatters_by_ft = {},
})
