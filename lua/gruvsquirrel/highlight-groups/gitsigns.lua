-- See https://github.com/lewis6991/gitsigns.nvim/blob/main/doc/gitsigns.txt
local with_meta = require("gruvsquirrel.util.tbl").with_meta

--- GitSigns Highlight Groups
---@class GruvsquirrelGitSignsGroup
local M = {
  GitSignsAdd = 'GitSignsAdd',
  GitSignsAddInline = 'GitSignsAddInline',
  GitSignsAddLn = 'GitSignsAddLn',
  GitSignsAddLnInline = 'GitSignsAddLnInline',
  GitSignsAddNr = 'GitSignsAddNr',
  GitSignsAddPreview = 'GitSignsAddPreview',
  GitSignsChange = 'GitSignsChange',
  GitSignsChangeDelete = 'GitSignsChangeDelete',
  GitSignsChangeDeleteLn = 'GitSignsChangeDeleteLn',
  GitSignsChangeDeleteNr = 'GitSignsChangeDeleteNr',
  GitSignsChangeInline = 'GitSignsChangeInline',
  GitSignsChangeLn = 'GitSignsChangeLn',
  GitSignsChangeLnInline = 'GitSignsChangeLnInline',
  GitSignsChangeLnVirtline = 'GitSignsChangeLnVirtline',
  GitSignsChangeNr = 'GitSignsChangeNr',
  GitSignsCurrentLineBlame = 'GitSignsCurrentLineBlame',
  GitSignsDelete = 'GitSignsDelete',
  GitSignsDeleteInline = 'GitSignsDeleteInline',
  GitSignsDeleteLnInline = 'GitSignsDeleteLnInline',
  GitSignsDeleteNr = 'GitSignsDeleteNr',
  GitSignsDeletePreview = 'GitSignsDeletePreview',
  GitSignsDeleteVirtLn = 'GitSignsDeleteVirtLn',
  GitSignsDeleteVirtLnInLine = 'GitSignsDeleteVirtLnInLine',
  GitSignsStagedAdd = 'GitSignsStagedAdd',
  GitSignsStagedAddLn = 'GitSignsStagedAddLn',
  GitSignsStagedAddNr = 'GitSignsStagedAddNr',
  GitSignsStagedChange = 'GitSignsStagedChange',
  GitSignsStagedChangeLn = 'GitSignsStagedChangeLn',
  GitSignsStagedChangeNr = 'GitSignsStagedChangeNr',
  GitSignsStagedChangedelete = 'GitSignsStagedChangedelete',
  GitSignsStagedChangedeleteLn = 'GitSignsStagedChangedeleteLn',
  GitSignsStagedChangedeleteNr = 'GitSignsStagedChangedeleteNr',
  GitSignsStagedDelete = 'GitSignsStagedDelete',
  GitSignsStagedDeleteNr = 'GitSignsStagedDeleteNr',
  GitSignsStagedTopdelete = 'GitSignsStagedTopdelete',
  GitSignsStagedTopdeleteNr = 'GitSignsStagedTopdeleteNr',
  GitSignsTopdelete = 'GitSignsTopdelete',
  GitSignsTopdeleteNr = 'GitSignsTopdeleteNr',
  GitSignsUntracked = 'GitSignsUntracked',
  GitSignsUntrackedLn = 'GitSignsUntrackedLn',
  GitSignsUntrackedNr = 'GitSignsUntrackedNr',
}

---@type GruvsquirrelGitSignsGroup
M = with_meta(M)

return M
