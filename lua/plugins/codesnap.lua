return {
  "mistricky/codesnap.nvim",
  tag = "v2.0.0-beta.17", -- latest version
  opts = {
    show_line_number = false,
    highlight_color = "#ffffff20",
    show_workspace = false,
    snapshot_config = {
      themes_folders = {
        vim.fn.expand("~/.config/codesnap/themes"),
      },
      theme = "vercel",
      window = {
        mac_window_bar = false,
        shadow = {
          radius = 20,
          color = "#00000040",
        },
        margin = {
          x = 10,
          y = 10,
        },
        border = {
          width = 1,
          color = "#ffffff30",
        },
        title_config = {
          color = "#ffffff",
          font_family = "FiraCode Nerd Font",
        },
      },
      fonts_folders = {},
      line_number_color = "#495162",
      command_output_config = {
        prompt = "❯",
        font_family = "FiraCode Nerd Font",
        prompt_color = "#F78FB3",
        command_color = "#98C379",
        string_arg_color = "#ff0000",
      },
      code_config = {
        font_family = "FiraCode Nerd Font",
        breadcrumbs = {
          enable = true,
          separator = "/",
          color = "#80848b",
          font_family = "FiraCode Nerd Font",
        },
      },
      watermark = {
        content = "",
        font_family = "FiraCode Nerd Font",
        color = "#ffffff",
      },
      background = {
        start = {
          x = 0,
          y = 0,
        },
        ["end"] = {
          x = "max",
          y = 0,
        },
        stops = {
          {
            position = 0,
            color = "#00000000",
          },
          {
            position = 1,
            color = "#00000000",
          },
        },
      },
    },
  },
}
