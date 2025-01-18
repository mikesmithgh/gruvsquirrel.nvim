local g = require('gruvsquirrel.highlight-groups.telescope')
local mapper = require('gruvsquirrel.util.mapper')
local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      {
        { g.TelescopeNormal, g.TelescopePromptNormal, g.TelescopeResultsNormal },
        d.fg_light0_bg_dark6,
      },
      { { g.TelescopePreviewNormal }, d.fg_light0_bg_dark0 },
      {
        {
          g.TelescopePreviewBorder,
        },
        d.fg_gray1_bg_dark0,
      },
      {
        {
          g.TelescopeBorder,
          g.TelescopePromptBorder,
          g.TelescopeResultsBorder,
        },
        d.fg_gray1_bg_dark6,
      },
      { { g.TelescopePreviewLine }, d.__bg_dark1_ctermfg_hack },
      {
        {
          g.TelescopeTitle,
          g.TelescopePromptTitle,
          g.TelescopePreviewTitle,
          g.TelescopeResultsTitle,
        },
        d.fg_dark6_bg_gray1_bold,
      },

      { { g.TelescopePromptCounter }, d.fg_green0 },

      { { g.TelescopeMatching, g.TelescopePreviewMatch }, d.fg_dark0_bg_green7 },

      { { g.TelescopePromptPrefix, g.TelescopeResultsStruct }, d.fg_blue4 },

      { { g.TelescopeSelection }, d.bg_dark3 },
      { { g.TelescopeSelectionCaret }, d.fg_red0 },
      {
        {
          g.TelescopeMultiIcon,

          g.TelescopeResultsConstant,
          g.TelescopeResultsNumber,
          g.TelescopeResultsMethod,
          g.TelescopeResultsDiffUntracked,
        },
        d.fg_purple0,
      },
      {
        { g.TelescopeMultiSelection },
        d.fg_gray0,
      },
      {
        { g.TelescopeResultsClass, g.TelescopeResultsField, g.TelescopeResultsFunction },
        d.fg_green0,
      },

      {
        { g.TelescopeResultsOperator },
        d.fg_orange0_italic,
      },
      {
        { g.TelescopeResultsVariable, g.TelescopeResultsSpecialComment },
        d.fg_orange0,
      },

      {
        { g.TelescopeResultsLineNr },
        d.fg_gray3,
      },

      { { g.TelescopeResultsIdentifier }, d.fg_blue0 },

      {
        { g.TelescopeResultsComment },
        d.fg_gray0_italic,
      },

      {
        { g.TelescopeResultsDiffChange, g.TelescopeResultsDiffAdd },
        d.bg_green1,
      },
      {
        { g.TelescopeResultsDiffDelete },
        d.fg_dark0_bg_purple4,
      },
    })
  end,
}
return M
