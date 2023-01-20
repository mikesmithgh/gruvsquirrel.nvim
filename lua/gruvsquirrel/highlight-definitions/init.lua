local attributes = {}

local runtime_files = vim.api.nvim_get_runtime_file("lua/gruvsquirrel/highlight-definitions/*.lua", true)
local prefix = 'gruvsquirrel.highlight-definitions.'
for _, path in pairs(runtime_files) do
  local name = vim.fn.fnamemodify(path, ':t:r') -- :t => filename :r => no file extension
  if name ~= 'init' then
    local highlight_definition = require(prefix .. name)
    attributes = vim.tbl_extend("force", attributes, highlight_definition)
  end
end

return attributes
