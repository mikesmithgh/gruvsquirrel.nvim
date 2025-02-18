local with_meta = require('gruvsquirrel.util.tbl').with_meta

---@class GruvsquirrelColors
local M = {
  dark0 = '#070707',
  dark1 = '#282828',
  dark2 = '#32302f',
  dark3 = '#3c3836',
  dark4 = '#000000',
  dark5 = '#0d0d0d',
  dark6 = '#1a1a1a',
  dark7 = '#151515',
  dark8 = '#1e1e1e',

  gray0 = '#968c81',
  gray1 = '#504945',
  gray2 = '#665c54',
  gray3 = '#7c6f64',
  gray4 = '#a0a0a0',
  gray5 = '#8b7e57',
  gray6 = '#878787',

  light0 = '#c7c7c7',
  light1 = '#f9f5d7',
  light2 = '#a89984',

  yellow0 = '#dbbc5f',

  orange0 = '#d6991d',
  orange1 = '#d79921',
  orange2 = '#b57614',
  orange3 = '#d65d0e',
  orange4 = '#2b1e06',
  orange5 = '#dea584',

  red0 = '#ff6961',
  red1 = '#cc241d',
  red2 = '#af3a03',
  red3 = '#9d0006',

  purple0 = '#d3869b',
  purple1 = '#b16286',
  purple2 = '#b7a7b7',
  purple3 = '#8f3f71',
  purple4 = '#692e26',

  blue0 = '#83a598',
  blue1 = '#458588',
  blue2 = '#076678',
  blue3 = '#282f35',
  blue4 = '#9dbad4',
  blue5 = '#92bbdf',

  green0 = '#8faa80',
  green1 = '#414b32',
  green2 = '#88a67f',
  green3 = '#689d6a',
  green4 = '#79740e',
  green5 = '#427b58',
  green6 = '#98971a',
  green7 = '#a9d5c4',
  green8 = '#53654e',
}

---@type GruvsquirrelColors
M = with_meta(M)

return M
