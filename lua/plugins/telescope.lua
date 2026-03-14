return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "apdot/doodle", -- Ensure doodle is a dependency
  },
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      extensions = {
        doodle = {}, -- Enable the doodle extension
      },
    })
    -- Load the extension
    telescope.load_extension("doodle")

    -- Example keymaps for doodle's telescope pickers
    local keymap = vim.keymap.set
    keymap("n", "<space>dd", function()
      telescope.extensions.doodle.find_notes()
    end, { desc = "Doodle Find Notes" })

    keymap("n", "<space>ff", function()
      telescope.extensions.doodle.find_files()
    end, { desc = "Doodle Find Files" })

    keymap("n", "<space>dy", function()
      telescope.extensions.doodle.find_templates()
    end, { desc = "Doodle Find Templates" })
  end,
}
