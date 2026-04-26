local capabilities = require("config.lsp.capabilities")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "html",
  callback = function()
    vim.lsp.start({
      name = "html",
      cmd = { "vscode-html-language-server", "--stdio" },
      root_dir = vim.fn.getcwd(),

      reuse_client = function (client)
        return client.name == "html"
      end,

      capabilities = capabilities
    })
  end,
})
