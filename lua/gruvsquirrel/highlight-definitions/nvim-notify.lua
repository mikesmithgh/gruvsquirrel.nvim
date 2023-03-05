local d = require("gruvsquirrel.common.highlight_aliases") -- highlight definitions
local g = require("gruvsquirrel.highlight-groups.nvim-notify") -- groups
local mapper = require("gruvsquirrel.util.mapper")

local attributes = mapper.highlight_group_mapper {
  { { g.NotifyBackground, g.NotifyDEBUGBody, g.NotifyERRORBody, g.NotifyINFOBody, g.NotifyTRACEBody, g.NotifyWARNBody, }, d.coriander },
  { { g.NotifyERRORBorder },                                                                                              d.cow_go_moo },
  { { g.NotifyERRORIcon, g.NotifyERRORTitle },                                                                            d.lemon_balm },
  { { g.NotifyINFOBorder },                                                                                               d.thyme },
  { { g.NotifyINFOIcon, g.NotifyINFOTitle },                                                                              d.ginkgo_nut },
  { { g.NotifyLogTime },                                                                                                  d.hickory_nut },
  { { g.NotifyLogTitle },                                                                                                 d.jackfruit_seed },
  { { g.NotifyTRACEBorder },                                                                                              d.quandong },
  { { g.NotifyTRACEIcon, g.NotifyTRACETitle },                                                                            d.lavender },
  { { g.NotifyWARNBorder },                                                                                               d.choppa },
  { { g.NotifyWARNIcon, g.NotifyWARNTitle },                                                                              d.jackfruit_seed },
  { { g.NotifyDEBUGBorder },                                                                                              d.dappydoo },
  { { g.NotifyDEBUGIcon, g.NotifyDEBUGTitle },                                                                            d.pepsi },
}

return attributes
