local g = require('gruvsquirrel.highlight-groups.nvim-tree')
local mapper = require('gruvsquirrel.util.mapper')
local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      { { g.NvimTreeBookmark }, d.fg_purple0 },
      { { g.NvimTreeExecFile }, d.fg_green0_bold },
      { { g.NvimTreeFileIcon }, d.fg_light0 },
      { { g.NvimTreeFolderName }, d.fg_blue4 },
      { { g.NvimTreeGitDeleted }, d.fg_red0 },
      { { g.NvimTreeGitDirty }, d.fg_yellow0 },
      { { g.NvimTreeGitMerge }, d.fg_purple0 },
      { { g.NvimTreeGitNew }, d.fg_yellow0 },
      { { g.NvimTreeGitRenamed }, d.fg_purple0 },
      { { g.NvimTreeGitStaged }, d.fg_yellow0 },
      { { g.NvimTreeImageFile }, d.fg_purple0 },
      { { g.NvimTreeIndentMarker }, d.fg_gray2 },
      { { g.NvimTreeLiveFilterPrefix }, d.fg_blue4_bold },
      { { g.NvimTreeLiveFilterValue }, d._bold },
      { { g.NvimTreeOpenedFile }, d.fg_dark0_bold },
      { { g.NvimTreeRootFolder }, d.fg_purple0_bold },
      { { g.NvimTreeSpecialFile }, d.fg_orange0_bold_underline },
      { { g.NvimTreeSymlink }, d.fg_blue4 },
      { { g.NvimTreeWindowPicker }, d.fg_green0_bg_dark5_bold },
      { { g.NvimTreeSignColumn }, d.fg_light0 },
      { { g.NvimTreeNormal }, d.fg_light0_bg_dark6 },
      { { g.NvimTreeNormalNC }, d.fg_light0_bg_dark6 },
      { { g.NvimTreeStatusLine }, d.fg_gray6_bg_dark1 },
      { { g.NvimTreeStatusLineNC }, d.fg_gray6_bg_dark1_italic },
      { { g.NvimTreeVertSplit }, d.fg_gray1_bg_dark1 },
      { { g.NvimTreeWinSeparator }, d.fg_gray1_bg_dark1 },
      { { g.NvimTreeFolderIcon }, d.fg_blue4 },
      { { g.NvimTreeOpenedFolderIcon }, d.fg_blue4 },
      { { g.NvimTreeClosedFolderIcon }, d.fg_blue4 },
      { { g.NvimTreeCursorColumn }, d.bg_dark5 },
      { { g.NvimTreeCursorLine }, d.__bg_dark1_ctermfg_hack },
      { { g.NvimTreeCursorLineNr }, d.fg_yellow0_bg_dark1 },
      { { g.NvimTreeEmptyFolderName }, d.fg_blue0_bold },
      { { g.NvimTreeOpenedFolderName }, d.fg_blue0_bold },
      { { g.NvimTreeEndOfBuffer }, d.fg_dark1 },
      { { g.NvimTreeFileDeleted }, d.fg_red0 },
      { { g.NvimTreeFileDirty }, d.fg_yellow0 },
      { { g.NvimTreeFileIgnored }, d.fg_gray0_italic },
      { { g.NvimTreeGitIgnored }, d.fg_gray0_italic },
      { { g.NvimTreeFileMerge }, d.fg_purple0 },
      { { g.NvimTreeFileNew }, d.fg_yellow0 },
      { { g.NvimTreeFileRenamed }, d.fg_purple0 },
      { { g.NvimTreeFileStaged }, d.fg_yellow0 },
      { { g.NvimTreeLineNr }, d.fg_light0 },
      { { g.NvimTreeLspDiagnosticsError }, d.fg_red0 },
      { { g.NvimTreeLspDiagnosticsHint }, d.fg_blue4 },
      { { g.NvimTreeLspDiagnosticsInformation }, d.fg_blue0 },
      { { g.NvimTreeLspDiagnosticsWarning }, d.fg_yellow0 },
      { { g.NvimTreePopup }, d.fg_light0_bg_dark6 },
    })
  end,
}
return M
