local colors = {
  bg = "#FF79C6",
  fg1 = "#8DE8FE",
  fg2 = "#282A36",
  fg3 = "#282A36",
}

local status_colours = {
  inactive = {
    a = { fg = colors.fg1, bg = colors.bg, gui = "bold" },
    b = { fg = colors.fg2, bg = colors.bg },
    c = { fg = colors.fg3, bg = colors.bg },
  },
  normal = {
    a = { fg = colors.fg1, bg = colors.bg, gui = "bold" },
    b = { fg = colors.fg2, bg = colors.bg },
    c = { fg = colors.fg2, bg = colors.bg },
  },
  visual = {
    a = { fg = colors.fg1, bg = colors.bg, gui = "bold" },
    b = { fg = colors.fg2, bg = colors.bg },
  },
  replace = {
    a = { fg = colors.fg1, bg = colors.bg, gui = "bold" },
    b = { fg = colors.fg2, bg = colors.bg },
  },
  insert = {
    a = { fg = colors.fg1, bg = colors.bg, gui = "bold" },
    b = { fg = colors.fg2, bg = colors.bg },
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
