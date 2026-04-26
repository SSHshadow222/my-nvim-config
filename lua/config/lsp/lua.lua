local capabilities = require("config.lsp.capabilities")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.lsp.start({
      name = "lua_ls",
      cmd = { "lua-language-server" },
      root_dir = vim.fn.getcwd(),
      reuse_client = function(client)
        return client.name == "lua_ls"
      end,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" }, -- Avoid "undefined global vim"
          },
        },
      },
      capabilities = capabilities,
    })
  end,
})
