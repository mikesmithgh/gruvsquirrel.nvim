local string_util = require('gruvsquirrel.util.string')
local M = {}

local default = 'gruvsquirrel'
---@param name string?
---@return GruvsquirrelColors
-- ---@return GruvsquirrelColors|BoxsquirrelColors
M.get = function(name)
  if not name or name == '' then
    name = vim.g.colors_name or default
  end
  local ok, colors = pcall(require, 'gruvsquirrel.colors.' .. name)
  if not ok then
    if string_util.endswith(name, 'squirrel') then
      vim.notify('gruvsquirrel.nvim: could not find color ' .. name, vim.log.levels.ERROR, {})
    end
    return {}
  end
  return colors
end

return M
