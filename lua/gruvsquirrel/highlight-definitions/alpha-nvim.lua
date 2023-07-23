local g = require("gruvsquirrel.highlight-groups.alpha-nvim")
local mapper = require("gruvsquirrel.util.mapper")

local M = {
  attributes = function()
    local d = require("gruvsquirrel.common.highlight_aliases").get()
    return mapper.highlight_group_mapper {
      -- highlight groups defined in LazyVim https://www.lazyvim.org/plugins/ui#alpha-nvim
      { { g.AlphaHeader },                       d.ginkgo_nut },
      { { g.AlphaFooter },                       d.hickory_nut },
      { { g.AlphaButtons },                      d.indian_nut },
      { { g.AlphaShortcut, g.AlphaHeaderLabel }, d.pine_cone },
    }
  end
}

return M
