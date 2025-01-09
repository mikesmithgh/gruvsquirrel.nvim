local M = {}

local defaults = {
  style = 'gruvsquirrel',
  cache = true,
}

M.options = defaults

function M.setup(options)
  M.options = vim.tbl_deep_extend('force', {}, defaults, options or {})
end

return M
