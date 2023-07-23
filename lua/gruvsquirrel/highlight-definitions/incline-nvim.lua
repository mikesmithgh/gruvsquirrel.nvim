local g = require("gruvsquirrel.highlight-groups.incline-nvim")
local mapper = require("gruvsquirrel.util.mapper")

local M = {
  attributes = function()
    local d = require("gruvsquirrel.common.highlight_aliases").get()
    return mapper.highlight_group_mapper {
      { { g.InclineNormalNC, }, d.hoiya },
      { { g.InclineNormal, },   d.hoiya },
    }
  end
}

return M
