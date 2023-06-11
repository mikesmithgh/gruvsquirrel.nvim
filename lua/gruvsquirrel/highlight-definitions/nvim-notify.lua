local d = require("gruvsquirrel.common.highlight_aliases")     -- highlight definitions
local g = require("gruvsquirrel.highlight-groups.nvim-notify") -- groups
local mapper = require("gruvsquirrel.util.mapper")

local attributes = mapper.highlight_group_mapper {
  { { g.NotifyBackground, g.NotifyDEBUGBody, g.NotifyERRORBody, g.NotifyINFOBody, g.NotifyTRACEBody, g.NotifyWARNBody, },
    d.coconut },
  { { g.NotifyERRORBorder },                   d.cow_go_moo },
  { { g.NotifyERRORIcon, g.NotifyERRORTitle }, d.coco_gogo },
  { { g.NotifyINFOBorder },                    d.coco_ha_thyme },
  { { g.NotifyINFOIcon, g.NotifyINFOTitle },   d.coco_ha_ginkgo_nut },
  { { g.NotifyLogTime },                       d.coco_ha_hickory_nut },
  { { g.NotifyLogTitle },                      d.coco_ha_jackfruit_seed },
  { { g.NotifyTRACEBorder },                   d.coco_ha_quandong },
  { { g.NotifyTRACEIcon, g.NotifyTRACETitle }, d.coco_ha_lavender },
  { { g.NotifyWARNBorder },                    d.choppa },
  { { g.NotifyWARNIcon, g.NotifyWARNTitle },   d.coco_ha_jackfruit_seed },
  { { g.NotifyDEBUGBorder },                   d.coco_ha_dappydoo },
  { { g.NotifyDEBUGIcon, g.NotifyDEBUGTitle }, d.coco_ha_pepsi },
}

return attributes
