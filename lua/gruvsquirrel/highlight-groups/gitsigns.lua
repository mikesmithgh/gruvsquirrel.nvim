-- See https://github.com/lewis6991/gitsigns.nvim/blob/main/doc/gitsigns.txt
local Set = require("gruvsquirrel.util.set").Set

return Set {
  'GitSignsAdd',
  'GitSignsAddInline',
  'GitSignsAddLn',
  'GitSignsAddLnInline',
  'GitSignsAddNr',
  'GitSignsAddPreview',
  'GitSignsChange',
  'GitSignsChangeDelete',
  'GitSignsChangeDeleteLn',
  'GitSignsChangeDeleteNr',
  'GitSignsChangeInline',
  'GitSignsChangeLn',
  'GitSignsChangeLnInline',
  'GitSignsChangeLnVirtline',
  'GitSignsChangeNr',
  'GitSignsCurrentLineBlame',
  'GitSignsDelete',
  'GitSignsDeleteInline',
  'GitSignsDeleteLnInline',
  'GitSignsDeleteNr',
  'GitSignsDeletePreview',
  'GitSignsDeleteVirtLn',
  'GitSignsDeleteVirtLnInLine',
  'GitSignsStagedAdd',
  'GitSignsStagedAddLn',
  'GitSignsStagedAddNr',
  'GitSignsStagedChange',
  'GitSignsStagedChangeLn',
  'GitSignsStagedChangeNr',
  'GitSignsStagedChangedelete',
  'GitSignsStagedChangedeleteLn',
  'GitSignsStagedChangedeleteNr',
  'GitSignsStagedDelete',
  'GitSignsStagedDeleteNr',
  'GitSignsStagedTopdelete',
  'GitSignsStagedTopdeleteNr',
  'GitSignsTopdelete',
  'GitSignsTopdeleteNr',
  'GitSignsUntracked',
  'GitSignsUntrackedLn',
  'GitSignsUntrackedNr',
}