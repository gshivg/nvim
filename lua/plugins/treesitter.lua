return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    opts = {
      ensure_installed = { "lua", "rust" },
      highlight = { enable = true },
      indent = { enable = true },
      incremental_selection = { enable = true },
    },
  },
}
