local g = require('gruvsquirrel.highlight-groups.gitcommit') -- groups
local mapper = require('gruvsquirrel.util.mapper')

local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      { { g.gitcommitHash }, d.fg_blue0 },
      { { g.gitcommitBlank }, d.fg_dark0_bg_red0_bold },
      { { g.gitcommitHeader }, d.fg_green0 },
      {
        {
          g.gitcommitDiscardedArrow,
          g.gitcommitSelectedArrow,
          g.gitcommitUnmergedArrow,
          g.gitcommitArrow,
          g.gitcommitOnBranch,
          g.gitcommitComment,
        },
        d.fg_gray0_italic,
      },
      { { g.gitcommitNoChanges }, d.fg_blue4 },
      { { g.gitcommitNoBranch }, d.fg_orange0 },
      { { g.gitcommitBranch }, d.fg_purple0 },
      {
        {
          g.gitcommitDiscardedType,
          g.gitcommitUnmergedType,
          g.gitcommitType,
          g.gitcommitSelectedType,
          g.gitcommitTrailerToken,
          g.gitcommitSummary,
        },
        d.fg_red0,
      },
      {
        {
          g.gitcommitUntrackedFile,
          g.gitcommitFile,
          g.gitcommitDiscardedFile,
          g.gitcommitSelectedFile,
          g.gitcommitUnmergedFile,
        },
        d.fg_blue0_underline,
      },
    })
  end,
}

return M
