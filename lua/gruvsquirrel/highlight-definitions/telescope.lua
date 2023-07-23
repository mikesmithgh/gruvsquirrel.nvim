local g = require("gruvsquirrel.highlight-groups.telescope")
local mapper = require("gruvsquirrel.util.mapper")
local M = {
  attributes = function()
    local d = require("gruvsquirrel.common.highlight_aliases").get()
    return mapper.highlight_group_mapper {
      { { g.TelescopeNormal, g.TelescopePromptNormal, g.TelescopeResultsNormal }, d.coconut },
      { { g.TelescopePreviewNormal },                                             d.cilantro },
      {
        {
          g.TelescopePreviewBorder,
        },
        d.doowho
      },
      {
        {
          g.TelescopeBorder,
          g.TelescopePromptBorder,
          g.TelescopeResultsBorder,
        },
        d.doowhat
      },
      { { g.TelescopePreviewLine, },                      d.almond },
      { {
        g.TelescopeTitle,
        g.TelescopePromptTitle,
        g.TelescopePreviewTitle,
        g.TelescopeResultsTitle,
      }, d.whatdoo },

      { { g.TelescopePromptCounter, },                    d.ginkgo_nut },

      { { g.TelescopeMatching, g.TelescopePreviewMatch }, d.celery },

      { { g.TelescopePromptPrefix,
        g.TelescopeResultsStruct
      }, d.indian_nut },

      { { g.TelescopeSelection, },      d.anise },
      { { g.TelescopeSelectionCaret, }, d.lemon_balm },
      { { g.TelescopeMultiIcon,


        g.TelescopeResultsConstant,
        g.TelescopeResultsNumber,
        g.TelescopeResultsMethod,
        g.TelescopeResultsDiffUntracked,

      }, d.lavender },
      { { g.TelescopeMultiSelection, },                                                   d.whesha },
      { { g.TelescopeResultsClass, g.TelescopeResultsField, g.TelescopeResultsFunction }, d.ginkgo_nut },

      { { g.TelescopeResultsOperator, },                                                  d.hibiscus },
      { { g.TelescopeResultsVariable, g.TelescopeResultsSpecialComment },                 d.jackfruit_seed },

      { { g.TelescopeResultsLineNr, },                                                    d.chickenbones },

      { { g.TelescopeResultsIdentifier, },                                                d.basil },

      { { g.TelescopeResultsComment },                                                    d.hickory_nut },

      { { g.TelescopeResultsDiffChange, g.TelescopeResultsDiffAdd, },                     d.black_walnut },
      { { g.TelescopeResultsDiffDelete, },                                                d.borage },


    }
  end
}
return M
