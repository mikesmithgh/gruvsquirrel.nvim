local g = require('gruvsquirrel.highlight-groups.diff') -- groups
local mapper = require('gruvsquirrel.util.mapper')

local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      { { g.diffAdded, g.diffFile, g.diffNewFile }, d.fg_green0 },
      { { g.diffComment }, d.fg_gray0_italic },
      { { g.diffChanged, g.diffSubname, g.diffLine }, d.fg_blue4 },
      {
        {
          g.diffOnly,
          g.diffIdentical,
          g.diffDiffer,
          g.diffBDiffer,
          g.diffIsA,
          g.diffNoEOL,
          g.diffCommon,
          g.diffIndexLine,
        },
        d.fg_purple0,
      },
      { { g.diffRemoved, g.diffOldFile }, d.fg_red2 },
    })
  end,
}

return M
