local g = require('gruvsquirrel.highlight-groups.mason') -- groups
local mapper = require('gruvsquirrel.util.mapper')

local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      { { g.MasonLink }, d.lavender },
      { { g.MasonHighlight }, d.basil },
      { { g.MasonHeader, g.MasonHeaderSecondary }, d.bay },
      { { g.MasonHighlightBlockBoldSecondary }, d.salted_bay },
      { { g.MasonMutedBlock }, d.almond },
      { { g.MasonMutedBlockBold }, d.salted_almond },
      { { g.MasonHighlightBlock }, d.anise },
      { { g.MasonHighlightBlockBold }, d.cumin },
      { { g.MasonError }, d.hazelnut },
      { { g.MasonNormal }, d.coconut },
      { { g.MasonHeading }, d.nasturtium },
      { { g.MasonMuted }, d.hickory_nut },
      { { g.MasonWarning, g.MasonHighlightSecondary }, d.jackfruit_seed },
      { { g.MasonHighlightBlockSecondary }, d.jujufruit_seed },
    })
  end,
}

return M
