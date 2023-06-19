local d = require("gruvsquirrel.common.highlight_aliases")
local g = require("gruvsquirrel.highlight-groups.alpha-nvim")
local mapper = require("gruvsquirrel.util.mapper")

local attributes = mapper.highlight_group_mapper {
  -- highlight groups defined in LazyVim https://www.lazyvim.org/plugins/ui#alpha-nvim
  { { g.AlphaHeader },                       d.ginkgo_nut },
  { { g.AlphaFooter },                       d.hickory_nut },
  { { g.AlphaButtons },                      d.indian_nut },
  { { g.AlphaShortcut, g.AlphaHeaderLabel }, d.pine_cone },
}

return attributes
