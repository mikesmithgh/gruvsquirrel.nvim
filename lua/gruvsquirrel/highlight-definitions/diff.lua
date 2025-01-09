local g = require('gruvsquirrel.highlight-groups.diff') -- groups
local mapper = require('gruvsquirrel.util.mapper')

local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      { { g.diffAdded, g.diffFile, g.diffNewFile }, d.ginkgo_nut },
      { { g.diffComment }, d.hickory_nut },
      { { g.diffChanged, g.diffSubname, g.diffLine }, d.indian_nut },
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
        d.lavender,
      },
      { { g.diffRemoved, g.diffOldFile }, d.maya_nut },
    })
  end,
}

return M
