-- See https://github.com/neovim/neovim/blob/master/runtime/syntax/diff.vim
local with_meta = require('gruvsquirrel.util.tbl').with_meta

--- Diff Highlight Groups
---@class GruvsquirrelDiffGroup
local M = {
  diffOldFile = 'diffOldFile',
  diffNewFile = 'diffNewFile',
  diffIndexLine = 'diffIndexLine',
  diffFile = 'diffFile',
  diffOnly = 'diffOnly',
  diffIdentical = 'diffIdentical',
  diffDiffer = 'diffDiffer',
  diffBDiffer = 'diffBDiffer',
  diffIsA = 'diffIsA',
  diffNoEOL = 'diffNoEOL',
  diffCommon = 'diffCommon',
  diffRemoved = 'diffRemoved',
  diffChanged = 'diffChanged',
  diffAdded = 'diffAdded',
  diffLine = 'diffLine',
  diffSubname = 'diffSubname',
  diffComment = 'diffComment',
}

---@type GruvsquirrelDiffGroup
M = with_meta(M)

return M
