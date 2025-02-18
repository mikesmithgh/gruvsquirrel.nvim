local g = require('gruvsquirrel.highlight-groups.lsp') -- groups
local mapper = require('gruvsquirrel.util.mapper')

local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      { { g.LspCodeLens, g.LspCodeLensSeparator }, d.fg_light0_bg_dark6_italic },
      { { g.LspSignatureActiveParameter }, d.fg_green0_bold },
      { { g.LspReferenceWrite, g.LspReferenceRead, g.LspReferenceText }, d.bg_dark3_bold },
      { { g.LspInlayHint }, d.fg_gray1_bg_dark5_italic },
    })
  end,
}

return M
