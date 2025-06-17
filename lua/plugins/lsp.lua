return {
  "neovim/nvim-lspconfig",
  config = function()
    --[[require("lspconfig").hls.setup({
      filetypes = { "haskell" },
    })]]
    require("lspconfig").clangd.setup({})
  end,
}
