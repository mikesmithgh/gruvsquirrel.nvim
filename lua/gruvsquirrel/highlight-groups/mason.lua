local with_meta = require('gruvsquirrel.util.tbl').with_meta

--- Mason Highlight Groups
---@class GruvsquirrelMasonGroup
local M = {
  MasonLink = 'MasonLink',
  MasonError = 'MasonError',
  MasonMuted = 'MasonMuted',
  MasonHeader = 'MasonHeader',
  MasonNormal = 'MasonNormal',
  MasonHeading = 'MasonHeading',
  MasonWarning = 'MasonWarning',
  MasonHighlight = 'MasonHighlight',
  MasonMutedBlock = 'MasonMutedBlock',
  MasonMutedBlockBold = 'MasonMutedBlockBold',
  MasonHighlightBlock = 'MasonHighlightBlock',
  MasonHighlightBlockBold = 'MasonHighlightBlockBold',
  MasonHeaderSecondary = 'MasonHeaderSecondary',
  MasonHighlightSecondary = 'MasonHighlightSecondary',
  MasonHighlightBlockSecondary = 'MasonHighlightBlockSecondary',
  MasonHighlightBlockBoldSecondary = 'MasonHighlightBlockBoldSecondary',
}

---@type GruvsquirrelMasonGroup
M = with_meta(M)

return M
