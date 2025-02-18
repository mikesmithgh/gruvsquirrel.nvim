--- See https://github.com/ibhagwan/fzf-lua/blob/main/lua/fzf-lua/init.lua

--- FzfLua Highlight Groups
---@class GruvsquirrelFzfLuaGroup
---@field FzfLuaBorder string
---@field FzfLuaBufName string
---@field FzfLuaCursor string
---@field FzfLuaCursorLine string
---@field FzfLuaCursorLineNr string
---@field FzfLuaHelpBorder string
---@field FzfLuaHelpNormal string
---@field FzfLuaNormal string
---@field FzfLuaPathColNr string
---@field FzfLuaPathLineNr string
---@field FzfLuaPreviewBorder string
---@field FzfLuaPreviewNormal string
---@field FzfLuaScrollBorderEmpty string
---@field FzfLuaScrollBorderFull string
---@field FzfLuaScrollFloatEmpty string
---@field FzfLuaScrollFloatFull string
---@field FzfLuaSearch string
---@field FzfLuaTitle string
---@field FzfLuaTitleFlags string

-- TODO: add highlights for the following groups
-- ---@field FzfLuaBackdrop string
-- ---@field FzfLuaPreviewTitle string
-- ---@field FzfLuaHeaderBind string
-- ---@field FzfLuaHeaderText string
-- ---@field FzfLuaBufId string
-- ---@field FzfLuaBufNr string
-- ---@field FzfLuaBufLineNr string
-- ---@field FzfLuaBufFlagCur string
-- ---@field FzfLuaBufFlagAlt string
-- ---@field FzfLuaTabTitle string
-- ---@field FzfLuaTabMarker string
-- ---@field FzfLuaDirIcon string
-- ---@field FzfLuaDirPart string
-- ---@field FzfLuaFilePart string
-- ---@field FzfLuaLivePrompt string
-- ---@field FzfLuaLiveSym string
-- ---@field FzfLuaFzfNormal string
-- ---@field FzfLuaFzfCursorLine string
-- ---@field FzfLuaFzfMatch string
-- ---@field FzfLuaFzfBorder string
-- ---@field FzfLuaFzfScrollbar string
-- ---@field FzfLuaFzfSeparator string
-- ---@field FzfLuaFzfGutter string
-- ---@field FzfLuaFzfHeader string
-- ---@field FzfLuaFzfInfo string
-- ---@field FzfLuaFzfPointer string
-- ---@field FzfLuaFzfMarker string
-- ---@field FzfLuaFzfSpinner string
-- ---@field FzfLuaFzfPrompt string
-- ---@field FzfLuaFzfQuery string

---@type GruvsquirrelFzfLuaGroup
local g = require('gruvsquirrel.util.tbl').with_meta()
local mapper = require('gruvsquirrel.util.mapper')

local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      { { g.FzfLuaPreviewNormal }, d.fg_light0_bg_dark0 },
      { { g.FzfLuaNormal, g.FzfLuaHelpNormal }, d.fg_light0_bg_dark6 },
      { { g.FzfLuaPreviewBorder }, d.fg_gray1_bg_dark0 },
      {
        {
          g.FzfLuaHelpBorder,
          g.FzfLuaBorder,
          g.FzfLuaScrollBorderEmpty,
          g.FzfLuaScrollBorderFull,
        },
        d.fg_gray1_bg_dark6,
      },
      { { g.FzfLuaCursorLine }, d.__bg_dark1_ctermfg_hack },
      { { g.FzfLuaCursorLineNr }, d.fg_yellow0_bg_dark1 },
      { { g.FzfLuaCursor }, d._reverse },
      { { g.FzfLuaSearch }, d.fg_dark0_bg_yellow0 },
      { { g.FzfLuaScrollFloatEmpty }, d.bg_blue3 },
      { { g.FzfLuaScrollFloatFull }, d.bg_dark3 },
      { { g.FzfLuaTitle }, d.fg_dark6_bg_gray1_bold },
      { { g.FzfLuaTitleFlags }, d.fg_dark1_bg_gray1_bold_italic },
      { { g.FzfLuaBufName }, d.fg_purple0 },
      { { g.FzfLuaPathLineNr }, d.fg_green0 },
      { { g.FzfLuaPathColNr }, d.fg_blue4 },
    })
  end,
}

return M
