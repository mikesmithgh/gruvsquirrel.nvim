local c = require("gruvsquirrel.colors.gruvsquirrel.palette") -- colors
local g = require("gruvsquirrel.highlight-groups.diff") -- groups
local mapper = require("gruvsquirrel.util.mapper")

local attributes = mapper.highlight_group_mapper {
  { { g.diffAdded, g.diffFile, g.diffNewFile, }, { fg = c.doreen_0 } },
  { { g.diffComment, }, { fg = c.rocky_0, italic = true } },
  { { g.diffChanged, g.diffSubname, g.diffLine, }, { fg = c.skippy_0, } },
  {
    { g.diffOnly,
      g.diffIdentical,
      g.diffDiffer,
      g.diffBDiffer,
      g.diffIsA,
      g.diffNoEOL,
      g.diffCommon,
      g.diffIndexLine,
    },
    { fg = c.surly_0, },
  },
  { { g.diffRemoved, g.diffOldFile, }, { fg = c.bucky_2, } },
}

return attributes
