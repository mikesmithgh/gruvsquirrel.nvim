local with_meta = require("gruvsquirrel.util.tbl").with_meta

--- Incline Highlight Groups
---@class GruvsquirrelInclineGroup
local M = {
  InclineNormal = 'InclineNormal',
  InclineNormalNC = 'InclineNormalNC',
}

---@type GruvsquirrelInclineGroup
M = with_meta(M)

return M
