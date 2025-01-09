-- see https://github.com/nvim-tree/nvim-tree.lua/blob/e8a89db1bbc06510a76fc935754b4e99a3e5e8a7/doc/nvim-tree-lua.txt
local with_meta = require('gruvsquirrel.util.tbl').with_meta

--- NvimTree Highlight Groups
---@class GruvsquirrelNvimTreeGroup
local M = {
  NvimTreeBookmark = 'NvimTreeBookmark',
  NvimTreeClosedFolderIcon = 'NvimTreeClosedFolderIcon',
  NvimTreeCursorColumn = 'NvimTreeCursorColumn',
  NvimTreeCursorLine = 'NvimTreeCursorLine',
  NvimTreeCursorLineNr = 'NvimTreeCursorLineNr',
  NvimTreeEmptyFolderName = 'NvimTreeEmptyFolderName',
  NvimTreeEndOfBuffer = 'NvimTreeEndOfBuffer',
  NvimTreeExecFile = 'NvimTreeExecFile',
  NvimTreeFileDeleted = 'NvimTreeFileDeleted',
  NvimTreeFileDirty = 'NvimTreeFileDirty',
  NvimTreeFileIcon = 'NvimTreeFileIcon',
  NvimTreeFileIgnored = 'NvimTreeFileIgnored',
  NvimTreeFileMerge = 'NvimTreeFileMerge',
  NvimTreeFileNew = 'NvimTreeFileNew',
  NvimTreeFileRenamed = 'NvimTreeFileRenamed',
  NvimTreeFileStaged = 'NvimTreeFileStaged',
  NvimTreeFolderIcon = 'NvimTreeFolderIcon',
  NvimTreeFolderName = 'NvimTreeFolderName',
  NvimTreeGitDeleted = 'NvimTreeGitDeleted',
  NvimTreeGitDirty = 'NvimTreeGitDirty',
  NvimTreeGitIgnored = 'NvimTreeGitIgnored',
  NvimTreeGitMerge = 'NvimTreeGitMerge',
  NvimTreeGitNew = 'NvimTreeGitNew',
  NvimTreeGitRenamed = 'NvimTreeGitRenamed',
  NvimTreeGitStaged = 'NvimTreeGitStaged',
  NvimTreeImageFile = 'NvimTreeImageFile',
  NvimTreeIndentMarker = 'NvimTreeIndentMarker',
  NvimTreeLineNr = 'NvimTreeLineNr',
  NvimTreeLiveFilterPrefix = 'NvimTreeLiveFilterPrefix',
  NvimTreeLiveFilterValue = 'NvimTreeLiveFilterValue',
  NvimTreeLspDiagnosticsError = 'NvimTreeLspDiagnosticsError',
  NvimTreeLspDiagnosticsHint = 'NvimTreeLspDiagnosticsHint',
  NvimTreeLspDiagnosticsInformation = 'NvimTreeLspDiagnosticsInformation',
  NvimTreeLspDiagnosticsWarning = 'NvimTreeLspDiagnosticsWarning',
  NvimTreeNormal = 'NvimTreeNormal',
  NvimTreeNormalNC = 'NvimTreeNormalNC',
  NvimTreeOpenedFile = 'NvimTreeOpenedFile',
  NvimTreeOpenedFolderIcon = 'NvimTreeOpenedFolderIcon',
  NvimTreeOpenedFolderName = 'NvimTreeOpenedFolderName',
  NvimTreePopup = 'NvimTreePopup',
  NvimTreeRootFolder = 'NvimTreeRootFolder',
  NvimTreeSignColumn = 'NvimTreeSignColumn',
  NvimTreeSpecialFile = 'NvimTreeSpecialFile',
  NvimTreeStatusLine = 'NvimTreeStatusLine',
  NvimTreeStatusLineNC = 'NvimTreeStatusLineNC',
  NvimTreeSymlink = 'NvimTreeSymlink',
  NvimTreeVertSplit = 'NvimTreeVertSplit',
  NvimTreeWinSeparator = 'NvimTreeWinSeparator',
  NvimTreeWindowPicker = 'NvimTreeWindowPicker',
}

---@type GruvsquirrelNvimTreeGroup
M = with_meta(M)

return M
