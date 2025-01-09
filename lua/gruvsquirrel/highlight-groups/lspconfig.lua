local with_meta = require('gruvsquirrel.util.tbl').with_meta

--- LspInfo Highlight Groups
---@class GruvsquirrelLspInfoGroup
local M = {
  LspInfoTitle = 'LspInfoTitle',
  LspInfoList = 'LspInfoList',
  LspInfoFiletype = 'LspInfoFiletype',
  LspInfoTip = 'LspInfoTip',
  LspInfoBorder = 'LspInfoBorder',
}

---@type GruvsquirrelLspInfoGroup
M = with_meta(M)

return M
