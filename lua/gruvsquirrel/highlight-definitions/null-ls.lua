local g = require('gruvsquirrel.highlight-groups.null-ls') -- groups
local mapper = require('gruvsquirrel.util.mapper')

local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      { { g.NullLsInfoBorder }, d.fg_gray1_bg_dark6 },
      { { g.NullLsInfoHeader }, d.fg_yellow0 },
      { { g.NullLsInfoSources }, d.fg_orange0 },
      { { g.NullLsInfoTitle }, d.fg_blue0 },
    })
  end,
}

return M
