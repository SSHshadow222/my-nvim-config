local path = vim.fn.stdpath("config") .. "/lua/config/lang"

for _, file in ipairs(vim.fn.readdir(path)) do
  if file:sub(-4) == ".lua" and file ~= "init.lua" then
    local module = "config.lang." .. file:gsub("%.lua$", "")

    require(module)
  end
end

