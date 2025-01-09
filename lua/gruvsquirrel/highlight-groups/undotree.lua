local with_meta = require('gruvsquirrel.util.tbl').with_meta

--- Undotree Highlight Groups
---@class GruvsquirrelUndotreeGroup
local M = {
  UndotreeBranch = 'UndotreeBranch',
  UndotreeCurrent = 'UndotreeCurrent',
  UndotreeFirstNode = 'UndotreeFirstNode',
  UndotreeHead = 'UndotreeHead',
  UndotreeHelp = 'UndotreeHelp',
  UndotreeHelpKey = 'UndotreeHelpKey',
  UndotreeHelpTitle = 'UndotreeHelpTitle',
  UndotreeNext = 'UndotreeNext',
  UndotreeNode = 'UndotreeNode',
  UndotreeNodeCurrent = 'UndotreeNodeCurrent',
  UndotreeSavedBig = 'UndotreeSavedBig',
  UndotreeSavedSmall = 'UndotreeSavedSmall',
  UndotreeSeq = 'UndotreeSeq',
  UndotreeTimeStamp = 'UndotreeTimeStamp',
}

---@type GruvsquirrelUndotreeGroup
M = with_meta(M)

return M
