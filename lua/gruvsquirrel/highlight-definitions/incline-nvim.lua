local g = require('gruvsquirrel.highlight-groups.incline-nvim')
local mapper = require('gruvsquirrel.util.mapper')

local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      { { g.InclineNormalNC }, d.fg_gray4_bg_dark1 },
      { { g.InclineNormal }, d.fg_gray4_bg_dark1 },
    })
  end,
}

return M
