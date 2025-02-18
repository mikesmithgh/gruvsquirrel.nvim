local g = require('gruvsquirrel.highlight-groups.gruvsquirrel')
local mapper = require('gruvsquirrel.util.mapper')

local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      { { g.GruvsquirrelCursorColumnFloat }, d.bg_dark8 },
      { { g.GruvsquirrelInclinePrefix }, d.fg_dark0_bold },
    })
  end,
}

return M
