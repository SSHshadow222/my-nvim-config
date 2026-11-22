return {
  "binbandit/achroma.nvim",
  config = function ()
    vim.api.nvim_create_autocmd("ColorSchemePre", {
      pattern = "achroma",
      callback = function ()
        vim.schedule(function ()
          vim.cmd("Achroma black");
        end)
      end,
    })
  end,
}
