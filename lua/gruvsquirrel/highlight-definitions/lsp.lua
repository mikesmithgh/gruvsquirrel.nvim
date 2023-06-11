local d = require("gruvsquirrel.common.highlight_aliases") -- highlight definitions
local g = require("gruvsquirrel.highlight-groups.lsp")     -- groups
local mapper = require("gruvsquirrel.util.mapper")

local attributes = mapper.highlight_group_mapper {
  { { g.LspCodeLens, g.LspCodeLensSeparator, },                       d.hotdog },
  { { g.LspSignatureActiveParameter, },                               d.chipotle },
  { { g.LspReferenceWrite, g.LspReferenceRead, g.LspReferenceText, }, d.cumin },
}

return attributes
