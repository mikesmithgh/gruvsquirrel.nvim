local g = require('gruvsquirrel.highlight-groups.netrw') -- groups
local mapper = require('gruvsquirrel.util.mapper')

local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      {
        { g.netrwComment, g.netrwComma, g.netrwHide, g.netrwHideSep },
        d.fg_gray0_italic,
      },
      {
        { g.netrwCmdSep, g.netrwDateSep, g.netrwLink, g.netrwPix, g.netrwTimeSep },
        d.fg_orange0,
      },
      {
        { g.netrwLib, g.netrwMakefile },
        d.bg_green1,
      },
      { { g.netrwDir }, d.fg_blue0_bold },
      {
        {
          g.netrwData,
          g.netrwGray,
          g.netrwBak,
          g.netrwCompress,
          g.netrwObj,
          g.netrwSpecFile,
          g.netrwTags,
          g.netrwTilde,
          g.netrwTmp,
        },
        d.fg_gray0_bg_dark0_italic,
      },
      { { g.netrwClassify, g.netrwHelpCmd }, d.fg_green0 },
      { { g.netrwVersion }, d.fg_blue0 },
      { { g.netrwQHTopic }, d.fg_purple0 },
      { { g.netrwExe }, d.fg_blue4 },
      { { g.netrwSymLink }, d.fg_yellow0_bold },
      { { g.netrwTreeBar }, d.fg_orange0 },
      { { g.netrwHidePat }, d.fg_blue0 },
      { { g.netrwList }, d.fg_blue0 },
      { { g.netrwMarkFile }, d.fg_gray6_bg_dark6_bold },
      { { g.netrwCoreDump }, d.fg_red0_bold },
      { { g.netrwPlain, g.netrwHdr, g.netrwLex, g.netrwYacc }, d.fg_light0_bg_dark0 },
    })
  end,
}

return M
