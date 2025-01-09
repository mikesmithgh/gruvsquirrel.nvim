local with_meta = require('gruvsquirrel.util.tbl').with_meta

--- colors in the form name_0 are considered main colors
--- colors are grouped into similar categorized by name is
--- simply used to give a friendly name for a color
---
--- Generic color names allows us to change underlying colors without worrying about variable names
--- andie   https://the-nut-job.fandom.com/wiki/andie
--- benny   https://disney.fandom.com/wiki/benny_(the_wild)
--- bucky   https://disney.fandom.com/wiki/bucky_the_squirrel
--- chitter https://smurfs.fandom.com/wiki/chitter
--- conker  https://donkeykong.fandom.com/wiki/conker_the_squirrel
--- doreen  https://marvel.fandom.com/wiki/doreen_green_(earth-616)
--- hammy   https://dreamworks.fandom.com/wiki/hammy
--- jojo    https://theswanprincess.fandom.com/wiki/jojo
--- rocky   https://rockyandbullwinkle.fandom.com/wiki/rocky_j._squirrel
--- sally   https://pete-the-cat-web-series.fandom.com/wiki/sally_squirrel
--- sandy   https://spongebob.fandom.com/wiki/sandy_cheeks
--- scrat   https://iceage.fandom.com/wiki/scrat
--- skippy  https://animaniacs.fandom.com/wiki/skippy_squirrel
--- slappy  https://animaniacs.fandom.com/wiki/slappy_squirrel
--- surly   https://the-nut-job.fandom.com/wiki/surly
---@class GruvsquirrelColors
local M = {
  scrat_0 = '#070707', -- dark
  scrat_1 = '#282828', -- dark
  scrat_2 = '#32302f', -- dark
  scrat_3 = '#3c3836', -- dark
  scrat_4 = '#000000', -- dark
  scrat_5 = '#0d0d0d', -- dark
  scrat_6 = '#1a1a1a', -- dark
  scrat_7 = '#151515', -- dark
  scrat_8 = '#1e1e1e', -- dark

  rocky_0 = '#968c81', -- gray
  rocky_1 = '#504945', -- gray
  rocky_2 = '#665c54', -- gray
  rocky_3 = '#7c6f64', -- gray
  rocky_4 = '#a0a0a0', -- gray
  rocky_5 = '#8b7e57', -- gray
  rocky_6 = '#878787', -- gray

  sally_0 = '#c7c7c7', -- light
  sally_1 = '#f9f5d7', -- light
  sally_2 = '#a89984', -- light

  sandy_0 = '#dbbc5f', -- yellow

  andie_0 = '#ffffff', -- yellow_orange placeholder

  hammy_0 = '#d6991d', -- orange
  hammy_1 = '#d79921', -- orange
  hammy_2 = '#b57614', -- orange
  hammy_3 = '#d65d0e', -- orange
  hammy_4 = '#2b1e06', -- orange
  hammy_5 = '#dea584', -- orange

  conker_0 = '#ffffff', -- orange_red placeholder

  bucky_0 = '#ff6961', -- red
  bucky_1 = '#cc241d', -- red
  bucky_2 = '#af3a03', -- red
  bucky_3 = '#9d0006', -- red

  benny_0 = '#ffffff', -- red_purple placeholder

  surly_0 = '#d3869b', -- purple
  surly_1 = '#b16286', -- purple
  surly_2 = '#b7a7b7', -- purple
  surly_3 = '#8f3f71', -- purple
  surly_4 = '#692e26', -- purple

  jojo_0 = '#ffffff', -- purple_blue placeholder

  chitter_0 = '#83a598', -- blue
  chitter_1 = '#458588', -- blue
  chitter_2 = '#076678', -- blue
  chitter_3 = '#282f35', -- blue

  skippy_0 = '#9dbad4', -- blue_green
  skippy_1 = '#92bbdf', -- blue_green

  doreen_0 = '#8faa80', -- green
  doreen_1 = '#414b32', -- green
  doreen_2 = '#88a67f', -- green
  doreen_3 = '#689d6a', -- green
  doreen_4 = '#79740e', -- green
  doreen_5 = '#427b58', -- green
  doreen_6 = '#98971a', -- green
  doreen_7 = '#a9d5c4', -- green
  doreen_8 = '#53654e', -- green

  slappy_0 = '#ffffff', -- green_yellow placeholder
}

---@type GruvsquirrelColors
M = with_meta(M)

return M
