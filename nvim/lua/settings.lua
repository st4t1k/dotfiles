vim.o.completeopt = "menu,menuone,noselect"
vim.o.wrap = true

-- Split
vim.o.splitright = true
vim.o.splitbelow = true

-- Tabs
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- Numbers
vim.o.relativenumber = true
vim.o.number = true
vim.o.signcolumn = 'yes'

-- Search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Basic filetype / syntax
vim.cmd('filetype on')
vim.cmd('syntax on')
vim.cmd('set mouse=a')

-- Theming
require("github-theme").setup({
  theme_style = "dark",
  function_style = "italic",
  sidebars = {"qf", "vista_kind", "terminal", "packer"},
  hide_inactive_statusline = true,

  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  colors = {hint = "orange", error = "#ff0000"},
})

vim.o.laststatus = 3
