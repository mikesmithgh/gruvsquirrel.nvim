local g = require('gruvsquirrel.highlight-groups.alpha-nvim')
local mapper = require('gruvsquirrel.util.mapper')

local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      -- highlight groups defined in LazyVim https://www.lazyvim.org/plugins/ui#alpha-nvim
      { { g.AlphaHeader }, d.fg_green0 },
      { { g.AlphaFooter }, d.fg_gray0_italic },
      { { g.AlphaButtons }, d.fg_blue4 },
      { { g.AlphaShortcut, g.AlphaHeaderLabel }, d.fg_orange1 },
    })
  end,
}

return M
