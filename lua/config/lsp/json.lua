local capabilities = require("config.lsp.capabilities")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "json",
  callback = function()
    vim.lsp.start({
      name = "json",
      cmd = { "vscode-json-language-server", "--stdio" },
      root_dir = vim.fn.getcwd(),
      reuse_client = function (client)
        return client.name == "json"
      end,
      capabilities = capabilities,
    })
  end,
})
