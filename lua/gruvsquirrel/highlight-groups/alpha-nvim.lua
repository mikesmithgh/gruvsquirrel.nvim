local with_meta = require("gruvsquirrel.util.tbl").with_meta

--- Alpha Highlight Groups
---@class AlphaGroup
local M = {
  -- highlight groups defined in LazyVim https://www.lazyvim.org/plugins/ui#alpha-nvim

  AlphaFooter = 'AlphaFooter',
  AlphaHeader = 'AlphaHeader',
  AlphaButtons = 'AlphaButtons',
  AlphaShortcut = 'AlphaShortcut',
  AlphaHeaderLabel = 'AlphaHeaderLabel',
}

---@type AlphaGroup
M = with_meta(M)

return M
