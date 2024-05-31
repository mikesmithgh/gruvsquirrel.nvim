--- See https://github.com/ibhagwan/fzf-lua/blob/main/lua/fzf-lua/init.lua
local with_meta = require('gruvsquirrel.util.tbl').with_meta

--- FzfLua Highlight Groups
---@class GruvsquirrelFzfLuaGroup
local M = {
  FzfLuaNormal = 'FzfLuaNormal',
  FzfLuaBorder = 'FzfLuaBorder',
  FzfLuaCursor = 'FzfLuaCursor',
  FzfLuaCursorLine = 'FzfLuaCursorLine',
  FzfLuaCursorLineNr = 'FzfLuaCursorLineNr',
  FzfLuaSearch = 'FzfLuaSearch',
  FzfLuaTitle = 'FzfLuaTitle',
  FzfLuaScrollBorderEmpty = 'FzfLuaScrollBorderEmpty',
  FzfLuaScrollBorderFull = 'FzfLuaScrollBorderFull',
  FzfLuaScrollFloatEmpty = 'FzfLuaScrollFloatEmpty',
  FzfLuaScrollFloatFull = 'FzfLuaScrollFloatFull',
  FzfLuaHelpNormal = 'FzfLuaHelpNormal',
  FzfLuaHelpBorder = 'FzfLuaHelpBorder',
  FzfLuaPreviewNormal = 'FzfLuaPreviewNormal',
  FzfLuaPreviewBorder = 'FzfLuaPreviewBorder',
  FzfLuaBufName = 'FzfLuaBufName',
  FzfLuaPathLineNr = 'FzfLuaPathLineNr',
  FzfLuaPathColNr = 'FzfLuaPathColNr',
}

---@type GruvsquirrelFzfLuaGroup
M = with_meta(M)

return M
