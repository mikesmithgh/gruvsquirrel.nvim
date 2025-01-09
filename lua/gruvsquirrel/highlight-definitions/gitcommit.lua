local g = require('gruvsquirrel.highlight-groups.gitcommit') -- groups
local mapper = require('gruvsquirrel.util.mapper')

local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      { { g.gitcommitHash }, d.basil },
      { { g.gitcommitBlank }, d.candlenut },
      { { g.gitcommitHeader }, d.ginkgo_nut },
      {
        {
          g.gitcommitDiscardedArrow,
          g.gitcommitSelectedArrow,
          g.gitcommitUnmergedArrow,
          g.gitcommitArrow,
          g.gitcommitOnBranch,
          g.gitcommitComment,
        },
        d.hickory_nut,
      },
      { { g.gitcommitNoChanges }, d.indian_nut },
      { { g.gitcommitNoBranch }, d.jackfruit_seed },
      { { g.gitcommitBranch }, d.lavender },
      {
        {
          g.gitcommitDiscardedType,
          g.gitcommitUnmergedType,
          g.gitcommitType,
          g.gitcommitSelectedType,
          g.gitcommitTrailerToken,
          g.gitcommitSummary,
        },
        d.lemon_balm,
      },
      {
        {
          g.gitcommitUntrackedFile,
          g.gitcommitFile,
          g.gitcommitDiscardedFile,
          g.gitcommitSelectedFile,
          g.gitcommitUnmergedFile,
        },
        d.macadamia_nut,
      },
    })
  end,
}

return M
