local Color = require("gruvsquirrel.util.set").Color
local c = require("gruvsquirrel.common.color_aliases")

local colors_metatable = {}

colors_metatable.__index = function(_, key)
  error(string.format("color %s is not defined", key))
end

-- colors in the form name_0 are considered main colors
-- colors are grouped into similar catogizes by name is
-- simply used to give a friendly name for a color
local colors = Color {

  -- dark
  { '#070707', c.scrat_0 },
  { '#282828', c.scrat_1 },
  { '#32302f', c.scrat_2 },
  { '#3c3836', c.scrat_3 },
  { '#000000', c.scrat_4 },
  { '#0d0d0d', c.scrat_5 },
  { '#1a1a1a', c.scrat_6 },

  -- gray
  { '#928374', c.rocky_0 },
  { '#504945', c.rocky_1 },
  { '#665c54', c.rocky_2 },
  { '#7c6f64', c.rocky_3 },
  { '#a0a0a0', c.rocky_4 },
  { '#8b7e57', c.rocky_5 },
  { '#878787', c.rocky_6 },

  -- light
  { '#c7c7c7', c.sally_0 },
  { '#f9f5d7', c.sally_1 },
  { '#fbf1c7', c.sally_2 },
  { '#f2e5bc', c.sally_2 },
  { '#d5c4a1', c.sally_2 },
  { '#bdae93', c.sally_2 },
  { '#a89984', c.sally_2 },

  -- yellow
  { '#dbbc5f', c.sandy_0 },

  -- yellow_orange
  { '#ffffff', c.andie_0 }, -- placeholder

  -- orange
  { '#d6991d', c.hammy_0 },
  { '#d79921', c.hammy_1 },
  { '#b57614', c.hammy_1 },
  { '#d65d0e', c.hammy_1 },

  -- orange_red
  { '#ffffff', c.conker_0 }, -- placeholder

  -- red
  { '#ff6961', c.bucky_0 },
  { '#cc241d', c.bucky_1 },
  { '#af3a03', c.bucky_2 },
  { '#9d0006', c.bucky_3 },

  -- red_purple
  { '#ffffff', c.benny_0 }, -- placeholder

  -- purple
  { '#d3869b', c.surly_0 },
  { '#b16286', c.surly_1 },
  { '#b7a7b7', c.surly_2 },
  { '#8f3f71', c.surly_3 },
  { '#692e26', c.surly_4 },

  -- purple_blue
  { '#ffffff', c.jojo_0 }, -- placeholder

  -- blue
  { '#83a598', c.chitter_0 },
  { '#458588', c.chitter_1 },
  { '#076678', c.chitter_2 },
  { '#282f35', c.chitter_3 },

  -- blue_green
  { '#9dbad4', c.skippy_0 },

  -- green
  { '#8faa80', c.doreen_0 },
  { '#414b32', c.doreen_1 },
  { '#88a67f', c.doreen_2 },
  { '#689d6a', c.doreen_3 },
  { '#79740e', c.doreen_4 },
  { '#427b58', c.doreen_5 },
  { '#98971a', c.doreen_6 },
  { '#a9d5c4', c.doreen_7 },
  { '#53654e', c.doreen_8 },

  -- green_yellow
  { '#ffffff', c.slappy_0 }, -- placeholder

}

local palette = setmetatable(colors, colors_metatable)
return palette
