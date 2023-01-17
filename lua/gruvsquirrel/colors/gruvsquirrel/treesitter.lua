local d = require("gruvsquirrel.common.highlight_aliases") -- highlight definitions
local g = require("gruvsquirrel.highlight-groups.treesitter") -- groups
local mapper = require("gruvsquirrel.util.mapper")

local attributes = mapper.highlight_group_mapper {
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
    d.basil
  },
  { { g['@none'], }, d.calendula },
  { { g['@text.danger'], }, d.candlenut },
  {
    {
      g['@function'],
      g['@function.call'],
      g['@method'],
      g['@method.call'],
      g['@text.title'],
      g['@text.diff.add'],
    },
    d.ginkgo_nut
  },
  { { g['@text.warning'], }, d.hazelnut },
  { { g['@annotation'], g['@operator'], }, d.hibiscus },
  { { g['@comment'], }, d.hickory_nut },
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
    d.indian_nut
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
      g['text.note'],

      g['@tag'],
      g['@tag.delimter'],
    },
    d.jackfruit_seed
  },
  { { g['@string'], }, d.kola_nut },
  { { g['@string.regex'], g['@text.literal'], }, d.mustard },
  {
    {
      g['@enumMember'],
      g['@character'],
      g['@boolean'],
      g['@number'],
      g['@float'],
      g['@constant'],
      g['@text.reference']
    },
    d.lavender
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
    d.lemon_balm,
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
    d.lemongrass
  },
  { { g['@variable'], g['@namespace'], g['@text'], }, d.peanut },
  { { g['@text.uri'], g['@text.underline'], }, d.macadamia_nut },
  { { g['@text.todo'], g['@text.todo.unchecked'], }, d.malabar_chestnut },
  { { g['@text.todo.checked'], }, d.marjoram },
  { { g['@text.strong'], }, d.nasturtium },
  { { g['@text.strike'], }, d.nigella },
  { { g['@text.emphasis'], }, d.oregano },
  { { g['@text.underline'], }, d.parsley },
  { { g['@text.diff.delete'], }, d.maya_nut },
}

return attributes
