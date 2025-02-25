return {
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  opts = {
    ensure_installed = {
      "stylua",
      "shellcheck",
      "shfmt",
      "clangd",
      "flake8",
    },
  },
}
