return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
  },
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "ts_ls",
        "clangd",
        "pyright",
        "html",
        "cssls",
        "jsonls",
        "lua_ls",
      },
    })
  end,
}
