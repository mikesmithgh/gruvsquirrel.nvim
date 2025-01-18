-- Generic highlight definitions allows us to change underlying definitions without worrying about variable names
local gruvsquirrel_colors = require('gruvsquirrel.colors')
local with_meta = require('gruvsquirrel.util.tbl').with_meta

local M = {
  get = function(...)
    local c = gruvsquirrel_colors.get(...)

    if next(c) == nil then
      return {}
    end

    ---@class GruvsquirrelHiglightAliases
    local hl_aliases = {

      -- hacks
      __bg_dark1_ctermfg_hack = { bg = c.dark1, ctermfg = 'white' }, -- ctermfg is a hack, see https://github.com/neovim/neovim/issues/9800

      -- attr only
      _bold = { bold = true },
      _bold_reverse = { reverse = true, bold = true },
      _italic = { italic = true },
      _none = {},
      _reverse = { reverse = true },
      _strikethrough = { strikethrough = true },
      _underline = { underline = true },

      -- bg
      bg_blue3 = { bg = c.blue3 },
      bg_blue4 = { bg = c.blue4 },
      bg_dark0 = { bg = c.dark0 },
      bg_dark1_bold = { bg = c.dark1, bold = true },
      bg_dark2 = { bg = c.dark2 },
      bg_dark3 = { bg = c.dark3 },
      bg_dark3_bold = { bg = c.dark3, bold = true },
      bg_dark5 = { bg = c.dark5 },
      bg_dark5_blend100 = { bg = c.dark5, blend = 100 },
      bg_dark6 = { bg = c.dark6 },
      bg_dark8 = { bg = c.dark8 },
      bg_green1 = { bg = c.green1 },
      bg_orange0 = { bg = c.orange0 },
      bg_orange4 = { bg = c.orange4 },

      -- fg
      fg_blue0 = { fg = c.blue0 },
      fg_blue0_bold = { fg = c.blue0, bold = true },
      fg_blue0_underline = { fg = c.blue0, underline = true },
      fg_blue1 = { fg = c.blue1 },
      fg_blue2 = { fg = c.blue2 },
      fg_blue4 = { fg = c.blue4 },
      fg_blue4_bold = { fg = c.blue4, bold = true },
      fg_dark0 = { fg = c.dark0 },
      fg_dark0_bold = { fg = c.dark0, bold = true },
      fg_dark1 = { fg = c.dark1 },
      fg_dark3 = { fg = c.dark3 },
      fg_gray0 = { fg = c.gray0 },
      fg_gray0_italic = { fg = c.gray0, italic = true },
      fg_gray1 = { fg = c.gray1 },
      fg_gray2 = { fg = c.gray2 },
      fg_gray3 = { fg = c.gray3 },
      fg_gray4 = { fg = c.gray4 },
      fg_gray5 = { fg = c.gray5 },
      fg_gray6 = { fg = c.gray6 },
      fg_green0 = { fg = c.green0 },
      fg_green0_bold = { fg = c.green0, bold = true },
      fg_green0_italic = { fg = c.green0, italic = true },
      fg_green1 = { fg = c.green1 },
      fg_green2 = { fg = c.green2 },
      fg_green2_reverse = { fg = c.green2, reverse = true }, -- reverse is to avoid conflict with cursorline during diff
      fg_green3 = { fg = c.green3 },
      fg_green5 = { fg = c.green5 },
      fg_green8 = { fg = c.green8 },
      fg_light0 = { fg = c.light0 },
      fg_light1 = { fg = c.light1 },
      fg_light2 = { fg = c.light2 },
      fg_light2_bold_italic = { fg = c.light2, bold = true, italic = true },
      fg_light2_bold_reverse = { fg = c.light2, bold = true, reverse = true },
      fg_orange0 = { fg = c.orange0 },
      fg_orange0_bold = { fg = c.orange0, bold = true },
      fg_orange0_bold_italic = { fg = c.orange0, bold = true, italic = true },
      fg_orange0_bold_underline = { fg = c.orange0, bold = true, underline = true },
      fg_orange0_italic = { fg = c.orange0, italic = true },
      fg_orange1 = { fg = c.orange1 },
      fg_orange3 = { fg = c.orange3 },
      fg_orange5 = { fg = c.orange5 },
      fg_purple0 = { fg = c.purple0 },
      fg_purple0_bold = { fg = c.purple0, bold = true },
      fg_purple1 = { fg = c.purple1 },
      fg_purple2_italic = { fg = c.purple2, italic = true },
      fg_purple3 = { fg = c.purple3 },
      fg_purple4 = { fg = c.purple4 },
      fg_red0 = { fg = c.red0 },
      fg_red0_bold = { fg = c.red0, bold = true },
      fg_red1 = { fg = c.red1 },
      fg_red2 = { fg = c.red2 },
      fg_yellow0 = { fg = c.yellow0 },
      fg_yellow0_bold = { fg = c.yellow0, bold = true },

      -- fg and bg
      fg_blue4_bg_dark6 = { fg = c.blue4, bg = c.dark6 },
      fg_dark0_bg_gray1 = { fg = c.dark0, bg = c.gray1 },
      fg_dark0_bg_green7 = { fg = c.dark0, bg = c.green7 },
      fg_dark0_bg_purple4 = { fg = c.dark0, bg = c.purple4 },
      fg_dark0_bg_red0_bold = { fg = c.dark0, bg = c.red0, bold = true },
      fg_dark0_bg_yellow0 = { fg = c.dark0, bg = c.yellow0 },
      fg_dark0_bg_yellow0_bold = { fg = c.dark0, bg = c.yellow0, bold = true },
      fg_dark1_bg_dark0 = { fg = c.dark1, bg = c.dark0 },
      fg_dark1_bg_gray1_reverse = { fg = c.dark1, bg = c.gray1, reverse = true }, -- reverse to avoid odd issue with usings default fillchars, remove reverse to reproduce issue
      fg_dark3_bg_dark6 = { fg = c.dark3, bg = c.dark6 },
      fg_dark3_bg_gray5 = { fg = c.dark3, bg = c.gray5 },
      fg_dark3_bg_green2 = { fg = c.dark3, bg = c.green2 },
      fg_dark5_bg_dark6 = { fg = c.dark5, bg = c.dark6 },
      fg_dark5_bg_green2 = { fg = c.dark5, bg = c.green2 },
      fg_dark6_bg_gray1_bold = { fg = c.dark6, bg = c.gray1, bold = true },
      fg_gray0_bg_dark0 = { fg = c.gray0, bg = c.dark0 },
      fg_gray0_bg_dark0_bold = { fg = c.gray0, bg = c.dark8, bold = true },
      fg_gray0_bg_dark0_italic = { fg = c.gray0, bg = c.dark0, italic = true },
      fg_gray0_bg_dark5 = { fg = c.gray0, bg = c.dark5 },
      fg_gray0_bg_dark6_italic = { fg = c.gray0, bg = c.dark6, italic = true },
      fg_gray1_bg_dark0 = { fg = c.gray1, bg = c.dark0 },
      fg_gray1_bg_dark1 = { fg = c.gray1, bg = c.dark1 },
      fg_gray1_bg_dark5 = { fg = c.gray1, bg = c.dark5 },
      fg_gray1_bg_dark5_italic = { fg = c.gray1, bg = c.dark5, italic = true },
      fg_gray1_bg_dark6 = { fg = c.gray1, bg = c.dark6 },
      fg_gray3_bg_dark0 = { fg = c.gray3, bg = c.dark0 },
      fg_gray4_bg_dark0 = { fg = c.gray4, bg = c.dark0 },
      fg_gray4_bg_dark1 = { fg = c.gray4, bg = c.dark1 },
      fg_gray4_bg_dark6 = { fg = c.gray4, bg = c.dark6 },
      fg_gray6_bg_dark1 = { fg = c.gray6, bg = c.dark1 },
      fg_gray6_bg_dark1_italic = { fg = c.gray6, bg = c.dark1, italic = true },
      fg_gray6_bg_dark6_bold = { fg = c.gray6, bg = c.dark6, bold = true },
      fg_green0_bg_dark0_bold = { fg = c.green0, bg = c.dark6, bold = true },
      fg_green0_bg_dark5_bold = { fg = c.green0, bg = c.dark5, bold = true },
      fg_green0_bg_dark6 = { fg = c.green0, bg = c.dark6 },
      fg_green1_bg_dark6 = { fg = c.green1, bg = c.dark6 },
      fg_light0_bg_dark0 = { fg = c.light0, bg = c.dark0 },
      fg_light0_bg_dark5 = { fg = c.light0, bg = c.dark5 },
      fg_light0_bg_dark6 = { fg = c.light0, bg = c.dark6 },
      fg_light0_bg_dark6_italic = { fg = c.light0, bg = c.dark6, italic = true },
      fg_light0_bg_green8 = { fg = c.light0, bg = c.green8 },
      fg_light0_bg_purple4 = { fg = c.light0, bg = c.purple4 },
      fg_orange0_bg_dark6 = { fg = c.orange0, bg = c.dark6 },
      fg_orange4_bg_dark6 = { fg = c.orange4, bg = c.dark6 },
      fg_purple0_bg_dark6 = { fg = c.purple0, bg = c.dark6 },
      fg_purple4_bg_dark6 = { fg = c.purple4, bg = c.dark6 },
      fg_red0_bg_dark6 = { fg = c.red0, bg = c.dark6 },
      fg_red3_bg_dark6 = { fg = c.red3, bg = c.dark6 },
      fg_yellow0_bg_dark1 = { fg = c.yellow0, bg = c.dark1 },
      fg_yellow0_bg_dark6_bold = { fg = c.yellow0, bg = c.dark6, bold = true },

      -- sp
      sp_blue_underline = { sp = c.blue0, underline = true },
      sp_blue4_undercurl = { sp = c.blue4, undercurl = true },
      sp_blue4_underline = { sp = c.blue4, underline = true },
      sp_green0_underline = { sp = c.green0, underline = true },
      sp_purple3_undercurl = { sp = c.purple3, undercurl = true },
      sp_red0_undercurl = { sp = c.red0, undercurl = true },
      sp_red0_underline = { sp = c.red0, underline = true },
      sp_yellow0_underline = { sp = c.yellow0, underline = true },
    }

    ---@type GruvsquirrelHiglightAliases
    hl_aliases = with_meta(hl_aliases)

    return hl_aliases
  end,
}

return M
