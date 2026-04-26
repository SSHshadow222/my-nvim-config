vim.o.tabstop = 2 -- Visual width (in spaces) of a real tab character (\t)
vim.o.shiftwidth = 2 -- Number of spaces used for indentation (e.g., >>, <<, etc.)
vim.o.expandtab = true -- Insert spaces instead of real tab characters when pressing <Tab>
vim.o.autoindent = true -- Copy indentation from the current line when starting a new one
vim.o.list = true -- Show invisible characters (e.g., trailing spaces)
vim.o.listchars = "trail:·" -- Display trailing spaces as '·'
vim.o.number = true -- Show line numbers

require("config.lazy")
require("config.lsp")
require("config.lang")
require("config.diagnostic")

vim.cmd.colorscheme("tokyonight")
