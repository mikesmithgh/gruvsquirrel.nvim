local g = require("gruvsquirrel.highlight-groups.gitsigns") -- groups
local d = require("gruvsquirrel.common.highlight_aliases")  -- highlight definitions
local mapper = require("gruvsquirrel.util.mapper")

local attributes = mapper.highlight_group_mapper {
  { { g.GitSignsAdd, g.GitSignsStagedAdd },                                                                d.pecan },
  {
    { g.GitSignsAddLnInline, g.GitSignsAddInline, g.GitSignsDeleteInline, g.GitSignsDeleteLnInline,
      g.GitSignsDeleteVirtLnInLine, }, d.beechnut },
  {
    { g.GitSignsAddLn, g.GitSignsAddPreview, g.GitSignsChangeLn, g.GitSignsUntrackedLn, g.GitSignsStagedAddLn,
      g.GitSignsStagedChangeLn, }, d.black_walnut },
  { { g.GitSignsAddNr, g.GitSignsStagedAddNr },                                                            d.pignoli },
  { { g.GitSignsChange, g.GitSignsStagedChange, },                                                         d.pili_nut },
  { { g.GitSignsChangeDelete, g.GitSignsStagedChangedelete, },                                             d.pine_nut },
  { { g.GitSignsChangeDeleteLn, g.GitSignsStagedChangedeleteLn, },                                         d.pistachio },
  { { g.GitSignsChangeDeleteNr, g.GitSignsStagedChangedeleteNr, },                                         d.poppy },
  { { g.GitSignsChangeInline, g.GitSignsChangeLnInline, g.GitSignsChangeLnVirtline },                      d.brazil_nut },
  { { g.GitSignsChangeNr, g.GitSignsStagedChangeNr, },                                                     d.pumpkin },
  { { g.GitSignsCurrentLineBlame },                                                                        d.calend },
  { { g.GitSignsDelete, g.GitSignsTopdelete, g.GitSignsStagedDelete, g.GitSignsStagedTopdelete, },         d.quandong },
  { { g.GitSignsUntracked, g.GitSignsUntrackedNr, },                                                       d.lavender },
  { { g.GitSignsDeleteNr, g.GitSignsTopdeleteNr, g.GitSignsStagedDeleteNr, g.GitSignsStagedTopdeleteNr, }, d.quinoa },
  { { g.GitSignsDeletePreview, g.GitSignsDeleteVirtLn, },                                                  d.borage },
}

return attributes
