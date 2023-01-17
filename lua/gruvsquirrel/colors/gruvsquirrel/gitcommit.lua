local c = require("gruvsquirrel.colors.gruvsquirrel.palette") -- colors
local g = require("gruvsquirrel.highlight-groups.gitcommit") -- groups
local mapper = require("gruvsquirrel.util.mapper")

local attributes = mapper.highlight_group_mapper {
  { { g.gitcommitHash, }, { fg = c.chitter_0 } },
  { { g.gitcommitBlank, }, { fg = c.scrat_0, bg = c.bucky_0, bold = true } },
  { { g.gitcommitHeader, }, { fg = c.doreen_0 } },
  {
    {
      g.gitcommitDiscardedArrow,
      g.gitcommitSelectedArrow,
      g.gitcommitUnmergedArrow,
      g.gitcommitArrow,
      g.gitcommitOnBranch,
      g.gitcommitComment,
    },
    { fg = c.rocky_0, italic = true },
  },
  { { g.gitcommitNoChanges, }, { fg = c.skippy_0, } },
  { { g.gitcommitNoBranch, }, { fg = c.hammy_0, } },
  { { g.gitcommitBranch, }, { fg = c.surly_0, } },
  {
    {
      g.gitcommitDiscardedType,
      g.gitcommitUnmergedType,
      g.gitcommitType,
      g.gitcommitSelectedType,
      g.gitcommitTrailerToken,
      g.gitcommitSummary,
    },
    {
      fg = c.bucky_0
    }
  },
  {
    { g.gitcommitUntrackedFile,
      g.gitcommitFile,
      g.gitcommitDiscardedFile,
      g.gitcommitSelectedFile,
      g.gitcommitUnmergedFile,
    },
    { fg = c.chitter_0, underline = true, }
  },
}

return attributes
