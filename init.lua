vim.o.tabstop = 2                          -- Number of spaces a <Tab> counts for.
vim.o.shiftwidth = 2                       -- Size of an indent.
vim.o.expandtab = true                     -- Use spaces instead of tabs.
vim.o.smarttab = true                      -- Insert indents on start of line according to shiftwidth.
vim.o.autoindent = true                    -- Copy indent from current line when starting a new one.
vim.o.list = true                          -- Show some invisible characters.
vim.o.listchars = "trail:·"                -- Show trailing spaces as '#'.
vim.o.number = true                        -- Show line numbers.

require("config.lazy")
require("config.lsp")
require("config.diagnostic")

vim.cmd.colorscheme("tokyonight")
