if false then
  return {
    "dracula/vim",
    config = function()
      vim.opt.background = "dark"
      vim.cmd("colorscheme dracula")
    end,
  }
end

return {
  "nyoom-engineering/oxocarbon.nvim",
  config = function()
    vim.opt.background = "dark" -- set this to dark or light
    vim.cmd("colorscheme oxocarbon")
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.cmd(":hi NormalNC ctermbg=NONE guibg=NONE")
    vim.cmd(":hi Normal ctermbg=NONE guibg=NONE")
    vim.cmd(":hi LineNr guibg=NONE")
  end,
}
