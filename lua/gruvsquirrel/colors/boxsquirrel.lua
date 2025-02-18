local with_meta = require('gruvsquirrel.util.tbl').with_meta

---@class BoxsquirrelColors
local M = {
  dark0 = '#1d2021',
  dark1 = '#282828',
  dark2 = '#32302f',
  dark3 = '#3c3836',
  dark4 = '#1d2021',
  dark5 = '#1d2021',
  dark6 = '#3c3836',
  dark7 = '#32302f',
  dark8 = '#32302f',

  gray0 = '#928374',
  gray1 = '#524b44',
  gray2 = '#6c6055',
  gray3 = '#7d7063',
  gray4 = '#5a544e',
  gray5 = '#8c8057',
  gray6 = '#504a45',

  light0 = '#fbf1c7',
  light1 = '#ebdbb2',
  light2 = '#d5c4a1',

  yellow0 = '#fabd2f',

  orange0 = '#fe8019',
  orange1 = '#ff8013',
  orange2 = '#e1814d',
  orange3 = '#fd6e27',
  orange4 = '#3e1a01',
  orange5 = '#fea37c',

  red0 = '#ff6961',
  red1 = '#f72a00',
  red2 = '#9e2a21',
  red3 = '#440500',

  purple0 = '#d3869b',
  purple1 = '#b16286',
  purple2 = '#b7a7b7',
  purple3 = '#8f3f71',
  purple4 = '#5c2613',

  blue0 = '#8ec07c',
  blue1 = '#6bc29f',
  blue2 = '#378e6e',
  blue3 = '#273821',
  blue4 = '#83a598',
  blue5 = '#151601',

  green0 = '#b8bb26',
  green1 = '#282903',
  green2 = '#a1a420',
  green3 = '#89aa11',
  green4 = '#696d32',
  green5 = '#0c631b',
  green6 = '#8d7716',
  green7 = '#63a590',
  green8 = '#0f664d',
}

---@type BoxsquirrelColors
M = with_meta(M)

return M
