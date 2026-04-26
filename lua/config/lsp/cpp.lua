local capabilities = require("config.lsp.capabilities")

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp", "objc", "objcpp" },
  callback = function()
    vim.lsp.start({
      name = "clangd",
      cmd = { "clangd" },

      root_dir = (function()
        local root = vim.fs.find(
          { "compile_commands.json", "compile_flags.txt", ".git" },
          { upward = true }
        )[1]
        return root and vim.fs.dirname(root) or vim.fn.getcwd()
      end)(),

      reuse_client = function(client)
        return client.name == "clangd"
      end,

      capabilities = capabilities,
    })
  end,
})
