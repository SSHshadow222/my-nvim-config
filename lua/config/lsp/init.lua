local path = vim.fn.stdpath("config") .. "/lua/config/lsp"

for _, file in ipairs(vim.fn.readdir(path)) do
  if file:sub(-4) == ".lua" and file ~= "init.lua" and file ~= "keymaps.lua" then
    local module = "config.lsp." .. file:gsub("%.lua$", "")

    require(module)
  end
end

require("config.lsp.keymaps")
