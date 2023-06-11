local d = require("gruvsquirrel.common.highlight_aliases")   -- highlight definitions
local g = require("gruvsquirrel.highlight-groups.lspconfig") -- groups
local mapper = require("gruvsquirrel.util.mapper")

local attributes = mapper.highlight_group_mapper {
  { { g.LspInfoBorder },   d.doowhat },
  { { g.LspInfoTip },      d.hickory_nut },
  { { g.LspInfoList },     d.basil },
  { { g.LspInfoTitle },    d.lemongrass },
  { { g.LspInfoFiletype }, d.jackfruit_seed },
}

return attributes
