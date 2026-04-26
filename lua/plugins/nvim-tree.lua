return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function ()
    require("nvim-tree").setup({
      sync_root_with_cwd = true,
      diagnostics = {
        enable = false,
      }
    })

    local api = require("nvim-tree.api")

    vim.keymap.set("n", "<leader>tt", api.tree.toggle)
    vim.keymap.set("n", "<leader>to", api.tree.open)
    vim.keymap.set("n", "<leader>tff", api.tree.find_file)
    vim.keymap.set("n", "<leader>tr", api.tree.reload)
    vim.keymap.set("n", "<leader>tc", api.tree.collapse_all)
  end,
}
