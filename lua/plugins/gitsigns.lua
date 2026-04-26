return {
  "lewis6991/gitsigns.nvim",
  config = function ()
    local gitsigns = require("gitsigns")

    gitsigns.setup({
      sign_priority = 2,
      current_line_blame = true,
      current_line_blame_opts = {
        delay = 0,
      },
    })

    vim.keymap.set("n", "<leader>gp", gitsigns.preview_hunk)
    vim.keymap.set("n", "<leader>gb", gitsigns.blame)
    vim.keymap.set("n", "<leader>gtclb", gitsigns.toggle_current_line_blame)
  end
}
