local g = require('gruvsquirrel.highlight-groups.fzf-lua')
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
      { { g.FzfLuaBufName }, d.fg_purple0 },
      { { g.FzfLuaPathLineNr }, d.fg_green0 },
      { { g.FzfLuaPathColNr }, d.fg_blue4 },
    })
  end,
}
return M
