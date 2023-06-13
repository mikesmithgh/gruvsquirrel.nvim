local g = require("gruvsquirrel.highlight-groups.fzf-lua")
local d = require("gruvsquirrel.common.highlight_aliases")
local mapper = require("gruvsquirrel.util.mapper")
local attributes = mapper.highlight_group_mapper {
  { { g.FzfLuaPreviewNormal },               d.cilantro },
  { { g.FzfLuaNormal, g.FzfLuaHelpNormal, }, d.coconut },
  { { g.FzfLuaPreviewBorder, },              d.doowho },
  {
    {
      g.FzfLuaHelpBorder,
      g.FzfLuaBorder,
      g.FzfLuaScrollBorderEmpty,
      g.FzfLuaScrollBorderFull,
    },
    d.doowhat
  },
  { { g.FzfLuaCursorLine, },       d.almond },
  { { g.FzfLuaCursorLineNr, },     d.chamomile },
  { { g.FzfLuaCursor, },           d.beechnut },
  { { g.FzfLuaSearch, },           d.bay },
  { { g.FzfLuaScrollFloatEmpty, }, d.comfrey },
  { { g.FzfLuaScrollFloatFull },   d.anise },
  { { g.FzfLuaTitle, },            d.whatdoo },
}
return attributes
