return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      filters = {
        dotfiles = true,
      },
      view = {
        side = "right",
      },
    })
    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", {})
    vim.cmd([[
      :hi NvimTreeWinSeparator  guibg=NONE 
      :hi NvimTreeNormal        guibg=NONE 
      :hi NvimTreeLineNr        guibg=NONE
    ]])
  end,
}
