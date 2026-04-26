local capabilities = require("config.lsp.capabilities")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "css",
  callback = function()
    vim.lsp.start({
      name = "css",
      cmd = { "vscode-css-language-server", "--stdio" },
      root_dir = vim.fn.getcwd(),

      reuse_client = function (client)
        return client.name == "css"
      end,

      capabilities = capabilities,
    })
  end,
})
