local c = require("gruvsquirrel.colors.gruvsquirrel.palette") -- colors
local g = require("gruvsquirrel.highlight-groups.gitcommit") -- groups
local mapper = require("gruvsquirrel.util.mapper")

local attributes = mapper.highlight_group_mapper {
  { { g.gitcommitHash, }, { fg = c.blue_0 } },
  { { g.gitcommitBlank, }, { fg = c.dark_0, bg = c.red_0, bold = true } },
  { { g.gitcommitHeader, }, { fg = c.green_0 } },
  {
    {
      g.gitcommitDiscardedArrow,
      g.gitcommitSelectedArrow,
      g.gitcommitUnmergedArrow,
      g.gitcommitArrow,
      g.gitcommitOnBranch,
      g.gitcommitComment,
    },
    { fg = c.gray_0, italic = true },
  },
  { { g.gitcommitNoChanges, }, { fg = c.blue_green_0, } },
  { { g.gitcommitNoBranch, }, { fg = c.orange_0, } },
  { { g.gitcommitBranch, }, { fg = c.purple_0, } },
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
      fg = c.red_0
    }
  },
  {
    { g.gitcommitUntrackedFile,
      g.gitcommitFile,
      g.gitcommitDiscardedFile,
      g.gitcommitSelectedFile,
      g.gitcommitUnmergedFile,
    },
    { fg = c.blue_0, underline = true, }
  },
}

return attributes
