local with_meta = require("gruvsquirrel.util.tbl").with_meta

--- DiffView Highlight Groups
---@class GruvsquirrelDiffViewGroup
local M = {
  DiffviewDim1 = 'DiffviewDim1',
  DiffviewNormal = 'DiffviewNormal',
  DiffviewDiffAdd = 'DiffviewDiffAdd',
  DiffviewNonText = 'DiffviewNonText',
  DiffviewPrimary = 'DiffviewPrimary',
  DiffviewDiffText = 'DiffviewDiffText',
  DiffviewReference = 'DiffviewReference',
  DiffviewSecondary = 'DiffviewSecondary',
  DiffviewCursorLine = 'DiffviewCursorLine',
  DiffviewDiffChange = 'DiffviewDiffChange',
  DiffviewDiffDelete = 'DiffviewDiffDelete',
  DiffviewFolderName = 'DiffviewFolderName',
  DiffviewFolderSign = 'DiffviewFolderSign',
  DiffviewSignColumn = 'DiffviewSignColumn',
  DiffviewStatusLine = 'DiffviewStatusLine',
  DiffviewEndOfBuffer = 'DiffviewEndOfBuffer',
  DiffviewStatusAdded = 'DiffviewStatusAdded',
  DiffviewStatusBroken = 'DiffviewStatusBroken',
  DiffviewStatusCopied = 'DiffviewStatusCopied',
  DiffviewStatusLineNC = 'DiffviewStatusLineNC',
  DiffviewWinSeparator = 'DiffviewWinSeparator',
  DiffviewDiffDeleteDim = 'DiffviewDiffDeleteDim',
  DiffviewFilePanelPath = 'DiffviewFilePanelPath',
  DiffviewStatusDeleted = 'DiffviewStatusDeleted',
  DiffviewStatusIgnored = 'DiffviewStatusIgnored',
  DiffviewStatusRenamed = 'DiffviewStatusRenamed',
  DiffviewStatusUnknown = 'DiffviewStatusUnknown',
  DiffviewFilePanelTitle = 'DiffviewFilePanelTitle',
  DiffviewStatusModified = 'DiffviewStatusModified',
  DiffviewStatusUnmerged = 'DiffviewStatusUnmerged',
  DiffviewDiffAddAsDelete = 'DiffviewDiffAddAsDelete',
  DiffviewStatusUntracked = 'DiffviewStatusUntracked',
  DiffviewFilePanelCounter = 'DiffviewFilePanelCounter',
  DiffviewStatusTypeChange = 'DiffviewStatusTypeChange',
  DiffviewFilePanelFileName = 'DiffviewFilePanelFileName',
  DiffviewFilePanelRootPath = 'DiffviewFilePanelRootPath',
  DiffviewFilePanelSelected = 'DiffviewFilePanelSelected',
  DiffviewFilePanelConflicts = 'DiffviewFilePanelConflicts',
  DiffviewFilePanelDeletions = 'DiffviewFilePanelDeletions',
  DiffviewFilePanelInsertions = 'DiffviewFilePanelInsertions',
}

---@type GruvsquirrelDiffViewGroup
M = with_meta(M)

return M
