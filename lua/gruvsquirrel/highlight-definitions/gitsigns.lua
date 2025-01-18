local g = require('gruvsquirrel.highlight-groups.gitsigns') -- groups
local mapper = require('gruvsquirrel.util.mapper')

local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      {
        { g.GitSignsAdd, g.GitSignsStagedAdd },
        d.fg_green8,
      },
      {
        {
          g.GitSignsAddLnInline,
          g.GitSignsAddInline,
          g.GitSignsDeleteInline,
          g.GitSignsDeleteLnInline,
          g.GitSignsDeleteVirtLnInLine,
        },
        d._reverse,
      },
      {
        {
          g.GitSignsAddLn,
          g.GitSignsAddPreview,
          g.GitSignsChangeLn,
          g.GitSignsUntrackedLn,
          g.GitSignsStagedAddLn,
          g.GitSignsStagedChangeLn,
        },
        d.bg_green1,
      },
      {
        { g.GitSignsAddNr, g.GitSignsStagedAddNr },
        d.fg_light0_bg_green8,
      },
      {
        { g.GitSignsChange, g.GitSignsStagedChange },
        d.fg_green2,
      },
      {
        { g.GitSignsChangeDelete, g.GitSignsStagedChangedelete },
        d.fg_gray5,
      },
      {
        { g.GitSignsChangeDeleteLn, g.GitSignsStagedChangedeleteLn },
        d.bg_orange4,
      },
      {
        { g.GitSignsChangeDeleteNr, g.GitSignsStagedChangedeleteNr },
        d.fg_dark3_bg_gray5,
      },
      {
        { g.GitSignsChangeInline, g.GitSignsChangeLnInline, g.GitSignsChangeLnVirtline },
        d.fg_dark5_bg_green2,
      },
      {
        { g.GitSignsChangeNr, g.GitSignsStagedChangeNr },
        d.fg_dark3_bg_green2,
      },
      {
        { g.GitSignsCurrentLineBlame },
        d.fg_gray1,
      },
      {
        {
          g.GitSignsDelete,
          g.GitSignsTopdelete,
          g.GitSignsStagedDelete,
          g.GitSignsStagedTopdelete,
        },
        d.fg_purple4,
      },
      {
        { g.GitSignsUntracked, g.GitSignsUntrackedNr },
        d.fg_purple0,
      },
      {
        {
          g.GitSignsDeleteNr,
          g.GitSignsTopdeleteNr,
          g.GitSignsStagedDeleteNr,
          g.GitSignsStagedTopdeleteNr,
        },
        d.fg_light0_bg_purple4,
      },
      {
        { g.GitSignsDeletePreview, g.GitSignsDeleteVirtLn },
        d.fg_dark0_bg_purple4,
      },
    })
  end,
}

return M
