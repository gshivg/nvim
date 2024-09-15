return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      shade_terminals = false,
      highlights = {
        Normal = {
          guibg = NONE,
        },
        FloatBorder = {
          guifg = NONE,
          guibg = NONE,
        },
      },
    })
    vim.keymap.set("n", "<leader>tf", ":ToggleTerm direction=float<CR>", { desc = "Open Floating Terminal" })
    vim.keymap.set(
      "n",
      "<leader>th",
      ":ToggleTerm size=10 direction=horizontal<CR>",
      { desc = "Open Floating Terminal" }
    )
    vim.keymap.set("n", "<leader>tv", ":ToggleTerm size=80 direction=vertical<CR>", { desc = "Open Floating Terminal" })
  end,
}
