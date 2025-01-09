local g = require('gruvsquirrel.highlight-groups.zen-mode')
local mapper = require('gruvsquirrel.util.mapper')

local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      { { g.ZenBg }, d.coriander },
    })
  end,
}

return M
