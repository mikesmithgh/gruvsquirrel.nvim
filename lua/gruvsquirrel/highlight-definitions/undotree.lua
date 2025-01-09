local g = require('gruvsquirrel.highlight-groups.undotree') -- groups
local mapper = require('gruvsquirrel.util.mapper')

local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      { { g.UndotreeNode }, d.chia },
      { { g.UndotreeNodeCurrent, g.UndotreeHead }, d.basil },
      { { g.UndotreeHelpKey, g.UndotreeTimeStamp, g.UndotreeFirstNode }, d.ginkgo_nut },
      { { g.UndotreeBranch }, d.lavender },
      { { g.UndotreeSeq, g.UndotreeHelp }, d.hickory_nut },
      { { g.UndotreeNext, g.UndotreeHelpTitle }, d.lemongrass },
      { { g.UndotreeSavedSmall }, d.hazelnut },
      { { g.UndotreeSavedBig }, d.barbaradoo },
    })
  end,
}

return M
