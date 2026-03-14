return {
  { "folke/snacks.nvim", opts = {
    dashboard = {
      enabled = false,
    },
  } },
  {
    {
      "goolord/alpha-nvim",
      event = "VimEnter",
      opts = function()
        local dashboard = require("alpha.themes.dashboard")
        dashboard.section.header.val = vim.split(
          [[
                    ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓█████                                           
                     ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓                                          
                       ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒                                   
                      ▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓█                                  
                     ██████████▒▒▒▓███████████▓▒▒▒▓▓▓▓▓█                                  
                     █▓▒██████████▓▒█████████▒▒▒▒▒▓▓▓▓▓▓                                  
                      █████████▒▒▒▓████████▒▒▒▒▒▒▒█▒▒▒▒▒                                  
                      █████████▒▒▒▓█████▓▓▓▒▒▒▒▒▒▒▓▓▓▓▓█▒                                 
                      ▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▒▒▒▓▒▒▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒                       
                      ▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▒▒▒▓▓▓▓▓▓▒▒▒▒▒▓▒                     
                      ▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█▓▓▒▒▒▒▓▓▓▓▒▒▒▒▒▒▓▒                     
                      ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒█▓▓▒▒▒▓█▓▓▓▓▒▒▓▓▓█▒                     
                               ▓▓             ▒▒▒▒███▓▓▓▓█▒▒▒▒█▓▓▓▓█▒                     
                  ▓▓▓▓▓▓▓      ▓▓     ▒▓▓▓▓▓▓▒▒▒▒▒███▓▓▓▓▓▓▒▒▒▓▓▒▒▒▓▒                     
                  ▓▓▒▒▒▓▓      ▓▓     ▒▓▒▒▒▒▓▒▒▒▒▒█▓▓▒▒▒▒▒▒▒▒▒▓▒▒▒▒▓▒                     
                  ▓▓▒▒▒▒▓      ▓▓     ▒▓▒▒▒▒▓▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓█▒▒▒▒█▒                     
                  ▓▓▓▓▓▓▓      ▓▓     ▒▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓█▒                     
                               ▓▓             ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▒                     
                               ▓▓▒▒▒   ▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒                       
                                  ▓▓  ▒▒▓▓██▓▓▒ ▒▒▓▒                                      
                                  ▓▓▒▒▒▒▓███▓▓▒▒▒▒▓▒                                      
                                   ▓▓▓▓▓▓████▓▓▓▓▓▓▓                                      
    ]],
          "\n"
        )
        dashboard.section.buttons.val = {}
        dashboard.opts.layout[1].val = 8
        return dashboard
      end,
      config = function(_, dashboard)
        if vim.o.filetype == "lazy" then
          vim.cmd.close()
          vim.api.nvim_create_autocmd("User", {
            once = true,
            pattern = "AlphaReady",
            callback = function()
              require("lazy").show()
            end,
          })
        end
        require("alpha").setup(dashboard.opts)
        vim.api.nvim_create_autocmd("User", {
          once = true,
          pattern = "LazyVimStarted",
          callback = function()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            dashboard.section.footer.val = ("⚡ Neovim loaded %d/%d plugins in %sms"):format(
              stats.loaded,
              stats.count,
              ms
            )
            pcall(vim.cmd.AlphaRedraw)
          end,
        })
      end,
    },
  },
}
