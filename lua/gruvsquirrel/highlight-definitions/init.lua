local attributes = {}

local runtime_files = vim.api.nvim_get_runtime_file("lua/gruvsquirrel/highlight-definitions/*.lua", true)
local prefix = 'gruvsquirrel.highlight-definitions.'
for _, path in pairs(runtime_files) do
  local name = vim.fn.fnamemodify(path, ':t:r') -- :t => filename :r => no file extension
  if name ~= 'init' then
    local success, highlight_definition = pcall(require, prefix .. name)
    if success then
      if highlight_definition ~= nil and type(highlight_definition) == 'table' then
        attributes = vim.tbl_extend("force", attributes, highlight_definition)
      end
    end
  end
end

return attributes
