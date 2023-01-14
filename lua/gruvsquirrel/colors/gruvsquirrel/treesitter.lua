local c = require("gruvsquirrel.colors.gruvsquirrel.palette") -- colors
local g = require("gruvsquirrel.highlight-groups.treesitter") -- groups
local mapper = require("gruvsquirrel.util.mapper")

local attributes = mapper.highlight_group_mapper {
  { { g['@decorator'], g['@event'], g['@interface'], g['@modifier'], g['@parameter'], g['@field'], g['@property'], g['@symbol'], g['@text.attribute'], }, { fg = c.blue_0 } },
  { { g['@none'], }, {} },
  { { g['@text.danger'], }, { fg = c.dark_0, bg = c.red_0, bold = true } },
  { { g['@function'], g['@function.call'], g['@method'], g['@method.call'], g['@text.title'], g['@text.diff.add'], }, { fg = c.green_0 } },
  { { g['@text.warning'], }, { fg = c.red_0, bold = true } },
  { { g['@annotation'], g['@operator'], }, { fg = c.orange_0, italic = true } },
  { { g['@comment'], }, { fg = c.gray_0, italic = true } },
  { { g['@preproc'], g['@define'], g['@function.macro'], g['@macro'], g['@include'], g['@class'], g['@attribute'], g['@constant.macro'], g['@text.environment'], g['@struct'], }, { fg = c.blue_green_0, } },
  { { g['@regexp'], g['@punctuation'], g['@punctuation.delimiter'], g['@punctuation.bracket'], g['@punctuation.special'], g['@string.escape'], g['@string.special'], g['@character.special'], g['@function.builtin'], g['@constructor'], g['@debug'], g['@storageclass'], g['@variable.builtin'], g['@constant.builtin'], g['@text.math'], g['text.note'], g['@tag'], g['@tag.delimter'], }, { fg = c.orange_0, } },
  { { g['@string'], }, { fg = c.purple_2, italic = true } },
  { { g['@string.regex'], g['@text.literal'], }, { fg = c.green_0, italic = true } },
  { { g['@enumMember'], g['@character'], g['@boolean'], g['@number'], g['@float'], g['@constant'], g['@text.reference'] }, { fg = c.purple_0, } },
  { { g['@keyword'], g['@keyword.function'], g['@keyword.return'], g['@keyword.operator'], g['@conditional'], g['@repeat'], g['@label'], g['@exception'], }, { fg = c.red_0 } },
  { { g['@enum'], g['@typeParameter'], g['@type'], g['@type.definition'], g['@type.builtin'], g['@type.qualifier'], g['@text.environment.name'], }, { fg = c.yellow_0, } },
  { { g['@variable'], g['@namespace'], g['@text'], }, { fg = c.light_0, } },
  { { g['@text.uri'], g['@text.underline'], }, { fg = c.blue_0, underline = true, } },
  { { g['@text.todo'], g['@text.todo.unchecked'], }, { fg = c.light_2, bold = true, italic = true, } },
  { { g['@text.todo.checked'], }, { fg = c.orange_0, bold = true, italic = true, } },
  { { g['@text.strong'], }, { bold = true, } },
  { { g['@text.strike'], }, { strikethrough = true, } },
  { { g['@text.emphasis'], }, { italic = true, } },
  { { g['@text.underline'], }, { underline = true, } },
  { { g['@text.diff.delete'], }, { fg = c.red_2, } },
}

return attributes
