-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "norg", "neorg" },
  callback = function()
    if pcall(vim.treesitter.start) then
      vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
      vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "python", "*.ipynb" },
  callback = function()
    -- Prevent double init
    if vim.b.molten_initialized then
      return
    end

    vim.b.molten_initialized = true

    -- Delay slightly so buffer is fully ready
    vim.defer_fn(function()
      vim.cmd("MoltenInit")
    end, 100)
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "python", "*.ipynb" },
  callback = function()
    vim.keymap.set("n", "<localleader>mi", ":MoltenInit<CR>")
    vim.keymap.set("n", "<localleader>e", ":MoltenEvaluateOperator<CR>")
    vim.keymap.set("n", "<localleader>r", ":MoltenReevaluateCell<CR>")
    vim.keymap.set("v", "<localleader>e", ":MoltenEvaluateVisual<CR>")
    vim.keymap.set("n", "<localleader>oh", ":MoltenHideOutput<CR>")
    vim.keymap.set("n", "<localleader>os", ":MoltenShowOutput<CR>")
  end,
})

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.ipynb", "*.md" },
  callback = function()
    vim.opt_local.swapfile = false
    vim.opt_local.backup = false
    vim.opt_local.writebackup = false
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "quarto" },
  callback = function()
    vim.opt_local.conceallevel = 0
    vim.opt_local.concealcursor = ""
  end,
})
