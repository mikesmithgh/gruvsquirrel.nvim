local g = require("gruvsquirrel.highlight-groups.lsp") -- groups
local mapper = require("gruvsquirrel.util.mapper")

local M = {
  attributes = function()
    local d = require("gruvsquirrel.common.highlight_aliases").get()
    return mapper.highlight_group_mapper {
      { { g.LspCodeLens, g.LspCodeLensSeparator, },                       d.hotdog },
      { { g.LspSignatureActiveParameter, },                               d.chipotle },
      { { g.LspReferenceWrite, g.LspReferenceRead, g.LspReferenceText, }, d.cumin },
    }
  end
}

return M
