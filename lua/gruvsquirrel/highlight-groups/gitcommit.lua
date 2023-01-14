-- See https://github.com/neovim/neovim/blob/master/runtime/syntax/gitcommit.vim
local Set = require("gruvsquirrel.util.set").Set

return Set {
  'gitcommitSummary',
  'gitcommitTrailerToken',
  'gitcommitComment',
  'gitcommitHash',
  'gitcommitOnBranch',
  'gitcommitBranch',
  'gitcommitNoBranch',
  'gitcommitDiscardedType',
  'gitcommitSelectedType',
  'gitcommitUnmergedType',
  'gitcommitType',
  'gitcommitNoChanges',
  'gitcommitHeader',
  'gitcommitUntrackedFile',
  'gitcommitDiscardedFile',
  'gitcommitSelectedFile',
  'gitcommitUnmergedFile',
  'gitcommitFile',
  'gitcommitDiscardedArrow',
  'gitcommitSelectedArrow',
  'gitcommitUnmergedArrow',
  'gitcommitArrow',
  'gitcommitBlank',
}

