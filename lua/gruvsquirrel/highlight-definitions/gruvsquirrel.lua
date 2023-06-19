local d = require("gruvsquirrel.common.highlight_aliases")
local g = require("gruvsquirrel.highlight-groups.gruvsquirrel")
local mapper = require("gruvsquirrel.util.mapper")

local attributes = mapper.highlight_group_mapper {
  { { g.GruvsquirrelCursorColumnFloat }, d.curcol },
}

return attributes
