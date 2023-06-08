local g = require("gruvsquirrel.highlight-groups.fzf-lua")
local d = require("gruvsquirrel.common.highlight_aliases")
local mapper = require("gruvsquirrel.util.mapper")
local attributes = mapper.highlight_group_mapper {
  {
    {
      g.FzfLuaNormal,
      g.FzfLuaHelpNormal,
    },
    d.coconut
  },
  {
    {
      g.FzfLuaBorder,
      g.FzfLuaHelpBorder,
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
