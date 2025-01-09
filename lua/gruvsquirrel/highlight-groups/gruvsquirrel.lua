local with_meta = require('gruvsquirrel.util.tbl').with_meta

--- Gruvsquirrel Highlight Groups
---@class GruvsquirrelGroup
local M = {
  GruvsquirrelCursorColumnFloat = 'GruvsquirrelCursorColumnFloat',
  GruvsquirrelInclinePrefix = 'GruvsquirrelInclinePrefix',
}

---@type GruvsquirrelGroup
M = with_meta(M)

return M
