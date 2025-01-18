local g = require('gruvsquirrel.highlight-groups.nvim-notify') -- groups
local mapper = require('gruvsquirrel.util.mapper')

local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      {
        {
          g.NotifyBackground,
          g.NotifyDEBUGBody,
          g.NotifyERRORBody,
          g.NotifyINFOBody,
          g.NotifyTRACEBody,
          g.NotifyWARNBody,
        },
        d.fg_light0_bg_dark6,
      },
      { { g.NotifyERRORBorder }, d.fg_red3_bg_dark6 },
      { { g.NotifyERRORIcon, g.NotifyERRORTitle }, d.fg_red0_bg_dark6 },
      { { g.NotifyINFOBorder }, d.fg_green1_bg_dark6 },
      { { g.NotifyINFOIcon, g.NotifyINFOTitle }, d.fg_green0_bg_dark6 },
      { { g.NotifyLogTime }, d.fg_gray0_bg_dark6_italic },
      { { g.NotifyLogTitle }, d.fg_orange0_bg_dark6 },
      { { g.NotifyTRACEBorder }, d.fg_purple4_bg_dark6 },
      { { g.NotifyTRACEIcon, g.NotifyTRACETitle }, d.fg_purple0_bg_dark6 },
      { { g.NotifyWARNBorder }, d.fg_orange4_bg_dark6 },
      { { g.NotifyWARNIcon, g.NotifyWARNTitle }, d.fg_orange0_bg_dark6 },
      { { g.NotifyDEBUGBorder }, d.fg_dark3_bg_dark6 },
      { { g.NotifyDEBUGIcon, g.NotifyDEBUGTitle }, d.fg_gray4_bg_dark6 },
    })
  end,
}

return M
