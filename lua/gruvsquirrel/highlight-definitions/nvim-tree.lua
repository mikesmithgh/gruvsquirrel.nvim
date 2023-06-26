local g = require("gruvsquirrel.highlight-groups.nvim-tree")
local d = require("gruvsquirrel.common.highlight_aliases")
local mapper = require("gruvsquirrel.util.mapper")
local attributes = mapper.highlight_group_mapper {
  { { g.NvimTreeBookmark, },                  d.lavender },
  { { g.NvimTreeExecFile, },                  d.chipotle },
  { { g.NvimTreeFileIcon, },                  d.peanut },
  { { g.NvimTreeFolderName, },                d.indian_nut },
  { { g.NvimTreeGitDeleted, },                d.lemon_balm },
  { { g.NvimTreeGitDirty, },                  d.lemongrass },
  { { g.NvimTreeGitMerge, },                  d.lavender },
  { { g.NvimTreeGitNew, },                    d.lemongrass },
  { { g.NvimTreeGitRenamed, },                d.lavender },
  { { g.NvimTreeGitStaged, },                 d.lemongrass },
  { { g.NvimTreeImageFile, },                 d.lavender },
  { { g.NvimTreeIndentMarker, },              d.nacho },
  { { g.NvimTreeLiveFilterPrefix, },          d.veggie },
  { { g.NvimTreeLiveFilterValue, },           d.nasturtium },
  { { g.NvimTreeOpenedFile, },                d.soup },
  { { g.NvimTreeRootFolder, },                d.doink },
  { { g.NvimTreeSpecialFile, },               d.meow },
  { { g.NvimTreeSymlink, },                   d.indian_nut },
  { { g.NvimTreeWindowPicker, },              d.mustachio },
  { { g.NvimTreeSignColumn, },                d.peanut },
  { { g.NvimTreeNormal, },                    d.coconut },
  { { g.NvimTreeNormalNC, },                  d.coconut },
  { { g.NvimTreeStatusLine, },                d.yoohoosl },
  { { g.NvimTreeStatusLineNC, },              d.yoohooslnc },
  { { g.NvimTreeVertSplit, },                 d.yoohoo },
  { { g.NvimTreeWinSeparator, },              d.yoohoo },
  { { g.NvimTreeFolderIcon, },                d.indian_nut },
  { { g.NvimTreeOpenedFolderIcon, },          d.indian_nut },
  { { g.NvimTreeClosedFolderIcon, },          d.indian_nut },
  { { g.NvimTreeCursorColumn, },              d.amaranth },
  { { g.NvimTreeCursorLine, },                d.almond },
  { { g.NvimTreeCursorLineNr, },              d.chamomile },
  { { g.NvimTreeEmptyFolderName, },           d.dorito },
  { { g.NvimTreeOpenedFolderName, },          d.dorito },
  { { g.NvimTreeEndOfBuffer, },               d.onlike },
  { { g.NvimTreeFileDeleted, },               d.lemon_balm },
  { { g.NvimTreeFileDirty, },                 d.lemongrass },
  { { g.NvimTreeFileIgnored, },               d.hickory_nut },
  { { g.NvimTreeGitIgnored, },                d.hickory_nut },
  { { g.NvimTreeFileMerge, },                 d.lavender },
  { { g.NvimTreeFileNew, },                   d.lemongrass },
  { { g.NvimTreeFileRenamed, },               d.lavender },
  { { g.NvimTreeFileStaged, },                d.lemongrass },
  { { g.NvimTreeLineNr, },                    d.peanut },
  { { g.NvimTreeLspDiagnosticsError, },       d.lemon_balm },
  { { g.NvimTreeLspDiagnosticsHint, },        d.indian_nut },
  { { g.NvimTreeLspDiagnosticsInformation, }, d.basil },
  { { g.NvimTreeLspDiagnosticsWarning, },     d.lemongrass },
  { { g.NvimTreePopup, },                     d.coconut },
}
return attributes
