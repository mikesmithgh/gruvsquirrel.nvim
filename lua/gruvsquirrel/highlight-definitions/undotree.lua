local g = require('gruvsquirrel.highlight-groups.undotree') -- groups
local mapper = require('gruvsquirrel.util.mapper')

local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      { { g.UndotreeNode }, d.fg_yellow0_bold },
      { { g.UndotreeNodeCurrent, g.UndotreeHead }, d.fg_blue0 },
      { { g.UndotreeHelpKey, g.UndotreeTimeStamp, g.UndotreeFirstNode }, d.fg_green0 },
      { { g.UndotreeBranch }, d.fg_purple0 },
      { { g.UndotreeSeq, g.UndotreeHelp }, d.fg_gray0_italic },
      { { g.UndotreeNext, g.UndotreeHelpTitle }, d.fg_yellow0 },
      { { g.UndotreeSavedSmall }, d.fg_red0_bold },
      { { g.UndotreeSavedBig }, d.fg_light2_bold_reverse },
    })
  end,
}

return M
