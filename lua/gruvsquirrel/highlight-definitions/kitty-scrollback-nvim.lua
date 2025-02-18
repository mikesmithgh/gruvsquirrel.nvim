local g = require('gruvsquirrel.highlight-groups.kitty-scrollback-nvim')
local mapper = require('gruvsquirrel.util.mapper')
local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      {
        { g.KittyScrollbackNvimPasteWinNormal, g.KittyScrollbackNvimPasteWinFloatTitle },
        d.fg_light0_bg_dark0,
      },
      { { g.KittyScrollbackNvimPasteWinFloatBorder }, d.fg_gray1_bg_dark0 },
    })
  end,
}
return M
