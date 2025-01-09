-- See https://github.com/neovim/neovim/blob/master/runtime/syntax/gitcommit.vim
local with_meta = require('gruvsquirrel.util.tbl').with_meta

--- GitCommit Highlight Groups
---@class GruvsquirrelGitCommitGroup
local M = {
  gitcommitSummary = 'gitcommitSummary',
  gitcommitTrailerToken = 'gitcommitTrailerToken',
  gitcommitComment = 'gitcommitComment',
  gitcommitHash = 'gitcommitHash',
  gitcommitOnBranch = 'gitcommitOnBranch',
  gitcommitBranch = 'gitcommitBranch',
  gitcommitNoBranch = 'gitcommitNoBranch',
  gitcommitDiscardedType = 'gitcommitDiscardedType',
  gitcommitSelectedType = 'gitcommitSelectedType',
  gitcommitUnmergedType = 'gitcommitUnmergedType',
  gitcommitType = 'gitcommitType',
  gitcommitNoChanges = 'gitcommitNoChanges',
  gitcommitHeader = 'gitcommitHeader',
  gitcommitUntrackedFile = 'gitcommitUntrackedFile',
  gitcommitDiscardedFile = 'gitcommitDiscardedFile',
  gitcommitSelectedFile = 'gitcommitSelectedFile',
  gitcommitUnmergedFile = 'gitcommitUnmergedFile',
  gitcommitFile = 'gitcommitFile',
  gitcommitDiscardedArrow = 'gitcommitDiscardedArrow',
  gitcommitSelectedArrow = 'gitcommitSelectedArrow',
  gitcommitUnmergedArrow = 'gitcommitUnmergedArrow',
  gitcommitArrow = 'gitcommitArrow',
  gitcommitBlank = 'gitcommitBlank',
}

---@type GruvsquirrelGitCommitGroup
M = with_meta(M)

return M
