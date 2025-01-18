local g = require('gruvsquirrel.highlight-groups.lspconfig') -- groups
local mapper = require('gruvsquirrel.util.mapper')

local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      { { g.LspInfoBorder }, d.fg_gray1_bg_dark6 },
      { { g.LspInfoTip }, d.fg_gray0_italic },
      { { g.LspInfoList }, d.fg_blue0 },
      { { g.LspInfoTitle }, d.fg_yellow0 },
      { { g.LspInfoFiletype }, d.fg_orange0 },
    })
  end,
}

return M
