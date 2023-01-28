local d = require("gruvsquirrel.common.highlight_aliases") -- highlight definitions
local g = require("gruvsquirrel.highlight-groups.netrw") -- groups
local mapper = require("gruvsquirrel.util.mapper")

local attributes = mapper.highlight_group_mapper {
  { { g.netrwComment, g.netrwComma, g.netrwHide, g.netrwHideSep, }, d.hickory_nut },
  { { g.netrwCmdSep, g.netrwDateSep, g.netrwLink, g.netrwPix, g.netrwTimeSep, }, d.jackfruit_seed },
  { { g.netrwLib, g.netrwMakefile }, d.black_walnut },
  { { g.netrwDir }, d.dorito },
  { { g.netrwData, g.netrwGray, g.netrwBak, g.netrwCompress, g.netrwObj, g.netrwSpecFile, g.netrwTags, g.netrwTilde,
    g.netrwTmp, }, d.caraway },
  { { g.netrwClassify, g.netrwHelpCmd }, d.ginkgo_nut },
  { { g.netrwVersion }, d.basil },
  { { g.netrwQHTopic }, d.lavender },
  { { g.netrwExe }, d.indian_nut },
  { { g.netrwSymLink }, d.chia },
  { { g.netrwTreeBar }, d.jackfruit_seed },
  { { g.netrwHidePat }, d.basil },
  { { g.netrwList }, d.basil },
  { { g.netrwMarkFile }, d.filbert },
  { { g.netrwCoreDump }, d.hazelnut },
  { { g.netrwPlain, g.netrwHdr, g.netrwLex, g.netrwYacc, }, d.cilantro },
}

return attributes
