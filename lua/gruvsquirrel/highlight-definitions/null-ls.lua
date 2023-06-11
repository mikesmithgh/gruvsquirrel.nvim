local d = require("gruvsquirrel.common.highlight_aliases") -- highlight definitions
local g = require("gruvsquirrel.highlight-groups.null-ls") -- groups
local mapper = require("gruvsquirrel.util.mapper")

local attributes = mapper.highlight_group_mapper {
  { { g.NullLsInfoBorder },  d.doowhat },
  { { g.NullLsInfoHeader },  d.lemongrass },
  { { g.NullLsInfoSources }, d.jackfruit_seed },
  { { g.NullLsInfoTitle },   d.basil },
}

return attributes
