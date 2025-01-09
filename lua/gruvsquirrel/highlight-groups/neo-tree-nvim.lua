local with_meta = require('gruvsquirrel.util.tbl').with_meta

--- NeoTree Highlight Groups
---@class GruvsquirrelNeoTreeGroup
local M = {
  NeoTreeBufferNumber = 'NeoTreeBufferNumber',
  NeoTreeCursorLine = 'NeoTreeCursorLine',
  NeoTreeDimText = 'NeoTreeDimText',
  NeoTreeDirectoryIcon = 'NeoTreeDirectoryIcon',
  NeoTreeDirectoryName = 'NeoTreeDirectoryName',
  NeoTreeDotfile = 'NeoTreeDotfile',
  NeoTreeFadeText1 = 'NeoTreeFadeText1',
  NeoTreeFadeText2 = 'NeoTreeFadeText2',
  NeoTreeFileIcon = 'NeoTreeFileIcon',
  NeoTreeFileName = 'NeoTreeFileName',
  NeoTreeFileNameOpened = 'NeoTreeFileNameOpened',
  NeoTreeFilterTerm = 'NeoTreeFilterTerm',
  NeoTreeFloatBorder = 'NeoTreeFloatBorder',
  NeoTreeFloatNormal = 'NeoTreeFloatNormal',
  NeoTreeFloatTitle = 'NeoTreeFloatTitle',
  NeoTreeGitAdded = 'NeoTreeGitAdded',
  NeoTreeGitConflict = 'NeoTreeGitConflict',
  NeoTreeGitDeleted = 'NeoTreeGitDeleted',
  NeoTreeGitIgnored = 'NeoTreeGitIgnored',
  NeoTreeGitModified = 'NeoTreeGitModified',
  NeoTreeGitRenamed = 'NeoTreeGitRenamed',
  NeoTreeGitStaged = 'NeoTreeGitStaged',
  NeoTreeGitUntracked = 'NeoTreeGitUntracked',
  NeoTreeGitUnstaged = 'NeoTreeGitUnstaged',
  NeoTreeHiddenByName = 'NeoTreeHiddenByName',
  NeoTreeIndentMarker = 'NeoTreeIndentMarker',
  NeoTreeMessage = 'NeoTreeMessage',
  NeoTreeModified = 'NeoTreeModified',
  NeoTreeNormal = 'NeoTreeNormal',
  NeoTreeNormalNC = 'NeoTreeNormalNC',
  NeoTreeSignColumn = 'NeoTreeSignColumn',
  NeoTreeStatusLine = 'NeoTreeStatusLine',
  NeoTreeStatusLineNC = 'NeoTreeStatusLineNC',
  NeoTreeTabActive = 'NeoTreeTabActive',
  NeoTreeTabInactive = 'NeoTreeTabInactive',
  NeoTreeTabSeparatorActive = 'NeoTreeTabSeparatorActive',
  NeoTreeTabSeparatorInactive = 'NeoTreeTabSeparatorInactive',
  NeoTreeVertSplit = 'NeoTreeVertSplit',
  NeoTreeWinSeparator = 'NeoTreeWinSeparator',
  NeoTreeEndOfBuffer = 'NeoTreeEndOfBuffer',
  NeoTreeRootName = 'NeoTreeRootName',
  NeoTreeSymbolicLinkTarget = 'NeoTreeSymbolicLinkTarget',
  NeoTreeTitleBar = 'NeoTreeTitleBar',
  NeoTreeExpander = 'NeoTreeExpander',
  NeoTreeWindowsHidden = 'NeoTreeWindowsHidden',
  NeoTreePreview = 'NeoTreePreview',
}

---@type GruvsquirrelNeoTreeGroup
M = with_meta(M)

return M
