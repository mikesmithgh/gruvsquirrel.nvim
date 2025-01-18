local g = require('gruvsquirrel.highlight-groups.mason') -- groups
local mapper = require('gruvsquirrel.util.mapper')

local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      { { g.MasonLink }, d.fg_purple0 },
      { { g.MasonHighlight }, d.fg_blue0 },
      { { g.MasonHeader, g.MasonHeaderSecondary }, d.fg_dark0_bg_yellow0 },
      { { g.MasonHighlightBlockBoldSecondary }, d.fg_dark0_bg_yellow0_bold },
      { { g.MasonMutedBlock }, d.__bg_dark1_ctermfg_hack },
      { { g.MasonMutedBlockBold }, d.bg_dark1_bold },
      { { g.MasonHighlightBlock }, d.bg_dark3 },
      { { g.MasonHighlightBlockBold }, d.bg_dark3_bold },
      { { g.MasonError }, d.fg_red0_bold },
      { { g.MasonNormal }, d.fg_light0_bg_dark6 },
      { { g.MasonHeading }, d._bold },
      { { g.MasonMuted }, d.fg_gray0_italic },
      { { g.MasonWarning, g.MasonHighlightSecondary }, d.fg_orange0 },
      { { g.MasonHighlightBlockSecondary }, d.bg_orange0 },
    })
  end,
}

return M
