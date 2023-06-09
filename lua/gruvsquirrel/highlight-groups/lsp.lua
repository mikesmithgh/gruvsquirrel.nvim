-- See https://github.com/neovim/neovim/blob/master/runtime/doc/lsp.txt
local with_meta = require("gruvsquirrel.util.tbl").with_meta

--- Lsp Highlight Groups
---@class GruvsquirrelLspGroup
local M = {
  LspCodeLens = 'LspCodeLens',
  LspCodeLensSeparator = 'LspCodeLensSeparator',
  LspSignatureActiveParameter = 'LspSignatureActiveParameter',
  LspReferenceRead = 'LspReferenceRead',
  LspReferenceText = 'LspReferenceText',
  LspReferenceWrite = 'LspReferenceWrite',
}

---@type GruvsquirrelLspGroup
M = with_meta(M)

return M
