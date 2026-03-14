vim.g.python3_host_prog = vim.fn.expand("~/.pyenv/shims/python3")

vim.g.molten_jupyter_cmd = "jupyter"
vim.g.molten_cell_marker = "# %%"
-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
