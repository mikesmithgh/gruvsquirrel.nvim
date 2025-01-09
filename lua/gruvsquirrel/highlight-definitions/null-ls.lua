local g = require('gruvsquirrel.highlight-groups.null-ls') -- groups
local mapper = require('gruvsquirrel.util.mapper')

local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      { { g.NullLsInfoBorder }, d.doowhat },
      { { g.NullLsInfoHeader }, d.lemongrass },
      { { g.NullLsInfoSources }, d.jackfruit_seed },
      { { g.NullLsInfoTitle }, d.basil },
    })
  end,
}

return M
