local colors = {
  fg1 = "#8DE8FE",
  fg2 = "#FF79C6",
}

local status_colours = {
  inactive = {
    a = { fg = colors.fg1, gui = "bold" },
    b = { fg = colors.fg2 },
    c = { fg = colors.fg2 },
  },
  normal = {
    a = { fg = colors.fg1, gui = "bold" },
    b = { fg = colors.fg2 },
    c = { fg = colors.fg2 },
  },
  visual = {
    a = { fg = colors.fg1, gui = "bold" },
    b = { fg = colors.fg2 },
  },
  replace = {
    a = { fg = colors.fg1, gui = "bold" },
    b = { fg = colors.fg2 },
  },
  insert = {
    a = { fg = colors.fg1, gui = "bold" },
    b = { fg = colors.fg2 },
  },
}

return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = {
    options = {
      icons_enabled = true,
      theme = status_colours,
      components_separators = "|",
      section_separators = "",
    },
  },
}
