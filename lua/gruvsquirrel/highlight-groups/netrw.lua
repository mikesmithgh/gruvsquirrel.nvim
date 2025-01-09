-- See https://github.com/neovim/neovim/blob/master/runtime/syntax/netrw.vim
local with_meta = require('gruvsquirrel.util.tbl').with_meta

--- Netrw Highlight Groups
---@class GruvsquirrelNetrwGroup
local M = {
  netrwClassify = 'netrwClassify',
  netrwCmdSep = 'netrwCmdSep',
  netrwComment = 'netrwComment',
  netrwDir = 'netrwDir',
  netrwHelpCmd = 'netrwHelpCmd',
  netrwQHTopic = 'netrwQHTopic',
  netrwHidePat = 'netrwHidePat',
  netrwHideSep = 'netrwHideSep',
  netrwList = 'netrwList',
  netrwVersion = 'netrwVersion',
  netrwSymLink = 'netrwSymLink',
  netrwExe = 'netrwExe',
  netrwDateSep = 'netrwDateSep',
  netrwTreeBar = 'netrwTreeBar',
  netrwTimeSep = 'netrwTimeSep',
  netrwComma = 'netrwComma',
  netrwHide = 'netrwHide',
  netrwMarkFile = 'netrwMarkFile',
  netrwLink = 'netrwLink',
  netrwCoreDump = 'netrwCoreDump',
  netrwData = 'netrwData',
  netrwHdr = 'netrwHdr',
  netrwLex = 'netrwLex',
  netrwLib = 'netrwLib',
  netrwMakefile = 'netrwMakefile',
  netrwYacc = 'netrwYacc',
  netrwPix = 'netrwPix',
  netrwBak = 'netrwBak',
  netrwCompress = 'netrwCompress',
  netrwSpecFile = 'netrwSpecFile',
  netrwObj = 'netrwObj',
  netrwTags = 'netrwTags',
  netrwTilde = 'netrwTilde',
  netrwTmp = 'netrwTmp',
  netrwPlain = 'netrwPlain',
  netrwGray = 'netrwGray',
}

---@type GruvsquirrelNetrwGroup
M = with_meta(M)

return M
