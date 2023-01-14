local Color = require("gruvsquirrel.util.set").Color

local colors_metatable = {}

colors_metatable.__index = function(_, key)
  error(string.format("color %s is not defined", key))
end

-- colors in the form name_0 are considered main colors
-- colors are grouped into similar catogizes by name is
-- simply used to give a friendly name for a color
local colors = Color {

  { '#070707', 'dark_0' },
  { '#282828', 'dark_1' },
  { '#32302f', 'dark_2' },
  { '#3c3836', 'dark_3' },
  { '#000000', 'dark_4' },
  { '#0d0d0d', 'dark_5' },
  { '#1a1a1a', 'dark_6' },

  { '#928374', 'gray_0' },
  { '#504945', 'gray_1' },
  { '#665c54', 'gray_2' },
  { '#7c6f64', 'gray_3' },
  { '#a0a0a0', 'gray_4' },
  { '#8b7e57', 'gray_5' },
  { '#878787', 'gray_6' },

  { '#c7c7c7', 'light_0' },
  { '#f9f5d7', 'light_1' },
  { '#fbf1c7', 'light_2' },
  { '#f2e5bc', 'light_2' },
  { '#d5c4a1', 'light_2' },
  { '#bdae93', 'light_2' },
  { '#a89984', 'light_2' },

  { '#dbbc5f', 'yellow_0' },

  -- yellow_orange_0 = '',

  { '#d6991d', 'orange_0' },
  { '#d79921', 'orange_1' },
  { '#b57614', 'orange_1' },
  { '#d65d0e', 'orange_1' },

  -- orange_red_0 = '',

  { '#ff6961', 'red_0' },
  { '#cc241d', 'red_1' },
  { '#af3a03', 'red_2' },
  { '#9d0006', 'red_3' },

  -- red_purple_0 = '',

  { '#d3869b', 'purple_0' },
  { '#b16286', 'purple_1' },
  { '#b7a7b7', 'purple_2' },
  { '#8f3f71', 'purple_3' },
  { '#692e26', 'purple_4' },

  -- purple_blue_0 = '',

  { '#83a598', 'blue_0' },
  { '#458588', 'blue_1' },
  { '#076678', 'blue_2' },
  { '#282f35', 'blue_3' },

  { '#9dbad4', 'blue_green_0' },

  { '#8faa80', 'green_0' },
  { '#414b32', 'green_1' },
  { '#88a67f', 'green_2' },
  { '#689d6a', 'green_3' },
  { '#79740e', 'green_4' },
  { '#427b58', 'green_5' },
  { '#98971a', 'green_6' },
  { '#a9d5c4', 'green_7' },
  { '#53654e', 'green_8' },

  -- green_yellow_0 = '',

}

local palette = setmetatable(colors, colors_metatable)
return palette

