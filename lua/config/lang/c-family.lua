vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp", "objc", "objcpp" },
  callback = function ()
    vim.o.tabstop = 4 -- Visual width (in spaces) of a real tab character (\t)
    vim.o.shiftwidth = 4 -- Number of spaces used for indentation (e.g., >>, <<, etc.)
  end
})
