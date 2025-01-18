local g = require('gruvsquirrel.highlight-groups.treesitter') -- groups
local mapper = require('gruvsquirrel.util.mapper')

local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      {
        {
          g['@decorator'],
          g['@event'],
          g['@interface'],
          g['@modifier'],
          g['@parameter'],
          g['@field'],
          g['@property'],
          g['@symbol'],
          g['@text.attribute'],
        },
        d.fg_blue0,
      },
      { { g['@none'] }, d._none },
      { { g['@text.danger'] }, d.fg_dark0_bg_red0_bold },
      {
        {
          g['@function'],
          g['@function.call'],
          g['@method'],
          g['@method.call'],
          g['@text.title'],
          g['@text.diff.add'],
        },
        d.fg_green0,
      },
      { { g['@text.warning'] }, d.fg_red0_bold },
      { { g['@annotation'], g['@operator'] }, d.fg_orange0_italic },
      { { g['@comment'] }, d.fg_gray0_italic },
      {
        {
          g['@preproc'],
          g['@define'],
          g['@function.macro'],
          g['@macro'],
          g['@include'],
          g['@class'],
          g['@attribute'],
          g['@constant.macro'],
          g['@text.environment'],
          g['@struct'],
        },
        d.fg_blue4,
      },
      {
        {
          g['@regexp'],
          g['@punctuation'],
          g['@punctuation.delimiter'],
          g['@punctuation.bracket'],
          g['@punctuation.special'],

          g['@string.escape'],
          g['@string.special'],
          g['@character.special'],
          g['@function.builtin'],
          g['@constructor'],

          g['@debug'],
          g['@storageclass'],
          g['@variable.builtin'],
          g['@constant.builtin'],
          g['@text.math'],
          g['@text.note'],

          g['@tag'],
          g['@tag.delimiter'],
        },
        d.fg_orange0,
      },
      { { g['@string'] }, d.fg_purple2_italic },
      { { g['@string.regex'], g['@text.literal'] }, d.fg_green0_italic },
      {
        {
          g['@enumMember'],
          g['@character'],
          g['@boolean'],
          g['@number'],
          g['@float'],
          g['@constant'],
          g['@text.reference'],
        },
        d.fg_purple0,
      },
      {
        {
          g['@keyword'],
          g['@keyword.function'],
          g['@keyword.return'],
          g['@keyword.operator'],
          g['@conditional'],
          g['@repeat'],
          g['@label'],
          g['@exception'],
        },
        d.fg_red0,
      },
      {
        {
          g['@enum'],
          g['@typeParameter'],
          g['@type'],
          g['@type.definition'],
          g['@type.builtin'],
          g['@type.qualifier'],
          g['@text.environment.name'],
        },
        d.fg_yellow0,
      },
      { { g['@variable'], g['@namespace'], g['@text'] }, d.fg_light0 },
      { { g['@text.uri'], g['@text.underline'] }, d.fg_blue0_underline },
      { { g['@text.todo'], g['@text.todo.unchecked'] }, d.fg_light2_bold_italic },
      { { g['@text.todo.checked'] }, d.fg_orange0_bold_italic },
      { { g['@text.strong'] }, d._bold },
      { { g['@text.strike'] }, d._strikethrough },
      { { g['@text.emphasis'] }, d._italic },
      { { g['@text.underline'] }, d._underline },
      { { g['@text.diff.delete'] }, d.fg_red2 },
    })
  end,
}

return M
