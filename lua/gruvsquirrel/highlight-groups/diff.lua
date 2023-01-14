-- See https://github.com/neovim/neovim/blob/master/runtime/syntax/diff.vim
local Set = require("gruvsquirrel.util.set").Set

return Set {
  'diffOldFile',
  'diffNewFile',
  'diffIndexLine',
  'diffFile',
  'diffOnly',
  'diffIdentical',
  'diffDiffer',
  'diffBDiffer',
  'diffIsA',
  'diffNoEOL',
  'diffCommon',
  'diffRemoved',
  'diffChanged',
  'diffAdded',
  'diffLine',
  'diffSubname',
  'diffComment',
}

