local g = require("gruvsquirrel.highlight-groups.nvim-tree") -- groups
local d = require("gruvsquirrel.common.highlight_aliases") -- highlight definitions
local mapper = require("gruvsquirrel.util.mapper")
local attributes = mapper.highlight_group_mapper {
  { { g.GitSignsAdd, }, d.pecan },
  { { g.NvimTreeBookmark, }, d.lavender },
  { { g.NvimTreeExecFile, }, d.chipotle },
  { { g.NvimTreeFileIcon, }, d.peanut },
  { { g.NvimTreeFolderName, }, d.indian_nut },
  { { g.NvimTreeGitDeleted, }, d.lemon_balm },
  { { g.NvimTreeGitDirty, }, d.lemongrass },
  { { g.NvimTreeGitMerge, }, d.lavender },
  { { g.NvimTreeGitNew, }, d.lemongrass },
  { { g.NvimTreeGitRenamed, }, d.lavender },
  { { g.NvimTreeGitStaged, }, d.lemongrass },
  { { g.NvimTreeImageFil, }, d.lavender },
  { { g.NvimTreeIndentMa, }, d.nacho },
  { { g.NvimTreeLiveFilt, }, d.veggie },
  { { g.NvimTreeLiveFilterValue, }, d.nasturtium },
  { { g.NvimTreeOpenedFi, }, d.soup },
  { { g.NvimTreeRootFold, }, d.doink },
  { { g.NvimTreeSpecialF, }, d.meow },
  { { g.NvimTreeSymlink, }, d.indian_nut },
  { { g.NvimTreeWindowPi, }, d.mcdonalds },
  { { g.NvimTreeSignColumn, }, d.peanut },
  { { g.NvimTreeNormal, }, d.coconut },
  { { g.NvimTreeNormalNC, }, d.cocnut },
  { { g.NvimTreeStatusLine, }, d.filbert },
  { { g.NvimTreeStatusLineNC, }, d.flax },
  { { g.NvimTreeVertSplit, }, d.hemp },
  { { g.NvimTreeWinSeparator, }, d.hemp },
  { { g.NvimTreeFolderIcon, }, d.indian_nut },
  { { g.NvimTreeOpenedFolderIcon, }, d.indian_nut },
  { { g.NvimTreeClosedFolderIcon, }, d.indian_nut },
  { { g.NvimTreeCursorColumn, }, d.amaranth },
  { { g.NvimTreeCursorLine, }, d.almond },
  { { g.NvimTreeCursorLineNr, }, d.chamomile },
  { { g.NvimTreeEmptyFolderName, }, d.dorito },
  { { g.NvimTreeOpenedFolderName, }, d.dorito },
  { { g.NvimTreeEndOfBuffer, }, d.calend },
  { { g.NvimTreeFileDeleted, }, d.lemon_balm },
  { { g.NvimTreeFileDirty, }, d.lemongrass },
  { { g.NvimTreeFileIgnored, }, d.hickory_nut },
  { { g.NvimTreeGitIgnored, }, d.hickory_nut },
  { { g.NvimTreeFileMerge, }, d.lavender },
  { { g.NvimTreeFileNew, }, d.lemongrass },
  { { g.NvimTreeFileRenamed, }, d.lavender },
  { { g.NvimTreeFileStaged, }, d.lemongrass },
  { { g.NvimTreeLineNr, }, d.peanut },
  { { g.NvimTreeLspDiagnosticsError, }, d.lemon_balm },
  { { g.NvimTreeLspDiagnosticsHint, }, d.indian_nut },
  { { g.NvimTreeLspDiagnosticsInformation, }, d.basil },
  { { g.NvimTreeLspDiagnosticsWarning, }, d.lemongrass },
  { { g.NvimTreeLspDiagnosticsOk, }, d.ginkgo_nut },
  { { g.NvimTreePopup, }, d.coconut },
}
return attributes
