local is_windows = vim.uv.os_uname().sysname:find("Windows") ~= nil

return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = is_windows
        and "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release"
        or "make",
    },
  },
  config = function()
    -- Setting Keymaps for Telescope
    local builtin = require("telescope.builtin")

    vim.keymap.set("n", "<leader>ff", function ()
      builtin.find_files({
        hidden = false,
        no_ignore = true,
      })
    end)

    vim.keymap.set("n", "<leader>fg", function ()
      builtin.live_grep({
        additional_args = function ()
          return { "--hidden", "--no-ignore" }
        end
      })
    end)

    vim.keymap.set("n", "<leader>fb", builtin.buffers)
    vim.keymap.set("n", "<leader>fh", builtin.help_tags)
    vim.keymap.set("n", "<leader>d", builtin.diagnostics)

    -- Setting up Telescope and extensions
    require("telescope").setup({
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown(),
        }
      }
    })

    -- Loading Telescope extensions
    require("telescope").load_extension("ui-select")
  end
}
