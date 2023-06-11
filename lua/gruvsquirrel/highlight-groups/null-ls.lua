local with_meta = require("gruvsquirrel.util.tbl").with_meta

--- NullLs Highlight Groups
---@class GruvsquirrelNullLsGroup
local M = {
  NullLsInfoTitle = 'NullLsInfoTitle',
  NullLsInfoBorder = 'NullLsInfoBorder',
  NullLsInfoHeader = 'NullLsInfoHeader',
  NullLsInfoSources = 'NullLsInfoSources',
}

---@type GruvsquirrelNullLsGroup
M = with_meta(M)

return M
