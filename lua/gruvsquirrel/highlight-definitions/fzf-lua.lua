local g = require('gruvsquirrel.highlight-groups.fzf-lua')
local mapper = require('gruvsquirrel.util.mapper')
local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      { { g.FzfLuaPreviewNormal }, d.cilantro },
      { { g.FzfLuaNormal, g.FzfLuaHelpNormal }, d.coconut },
      { { g.FzfLuaPreviewBorder }, d.doowho },
      {
        {
          g.FzfLuaHelpBorder,
          g.FzfLuaBorder,
          g.FzfLuaScrollBorderEmpty,
          g.FzfLuaScrollBorderFull,
        },
        d.doowhat,
      },
      { { g.FzfLuaCursorLine }, d.almond },
      { { g.FzfLuaCursorLineNr }, d.chamomile },
      { { g.FzfLuaCursor }, d.beechnut },
      { { g.FzfLuaSearch }, d.bay },
      { { g.FzfLuaScrollFloatEmpty }, d.comfrey },
      { { g.FzfLuaScrollFloatFull }, d.anise },
      { { g.FzfLuaTitle }, d.whatdoo },
      { { g.FzfLuaBufName }, d.lavender },
      { { g.FzfLuaPathLineNr }, d.ginkgo_nut },
      { { g.FzfLuaPathColNr }, d.indian_nut },
    })
  end,
}
return M
