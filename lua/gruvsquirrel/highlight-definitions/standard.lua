-- See https://github.com/neovim/neovim/blob/9220755302317e8030c5bbf334357c0d64df9fa4/src/nvim/highlight_group.c

--- Standard Highlight Groups
---@class GruvsquirrelStandardGroup
---@field  Boolean string
---@field  Character string
---@field  ColorColumn string
---@field  Comment string
---@field  Conceal string
---@field  Conditional string
---@field  Constant string
---@field  CurSearch string
---@field  Cursor string
---@field  CursorColumn string
---@field  CursorLine string
---@field  CursorLineFold string
---@field  CursorLineNr string
---@field  CursorLineSign string
---@field  Debug string
---@field  Define string
---@field  Delimiter string
---@field  DiagnosticError string
---@field  DiagnosticFloatingError string
---@field  DiagnosticFloatingHint string
---@field  DiagnosticFloatingInfo string
---@field  DiagnosticFloatingOk string
---@field  DiagnosticFloatingWarn string
---@field  DiagnosticHint string
---@field  DiagnosticInfo string
---@field  DiagnosticOk string
---@field  DiagnosticSignError string
---@field  DiagnosticSignHint string
---@field  DiagnosticSignInfo string
---@field  DiagnosticSignOk string
---@field  DiagnosticSignWarn string
---@field  DiagnosticUnderlineError string
---@field  DiagnosticUnderlineHint string
---@field  DiagnosticUnderlineInfo string
---@field  DiagnosticUnderlineOk string
---@field  DiagnosticUnderlineWarn string
---@field  DiagnosticVirtualTextError string
---@field  DiagnosticVirtualTextHint string
---@field  DiagnosticVirtualTextInfo string
---@field  DiagnosticVirtualTextOk string
---@field  DiagnosticVirtualTextWarn string
---@field  DiagnosticWarn string
---@field  DiffAdd string
---@field  DiffChange string
---@field  DiffDelete string
---@field  DiffText string
---@field  Directory string
---@field  EndOfBuffer string
---@field  Error string
---@field  ErrorMsg string
---@field  Exception string
---@field  Float string
---@field  FloatBorder string
---@field  FloatShadow string
---@field  FloatShadowThrough string
---@field  FloatTitle string
---@field  FoldColumn string
---@field  Folded string
---@field  Function string
---@field  Identifier string
---@field  Field string
---@field  Property string
---@field  Variable string
---@field  Ignore string
---@field  IncSearch string
---@field  Include string
---@field  Keyword string
---@field  Label string
---@field  LineNr string
---@field  LineNrAbove string
---@field  LineNrBelow string
---@field  Macro string
---@field  MatchParen string
---@field  MatchParenCur string
---@field  ModeMsg string
---@field  MoreMsg string
---@field  MsgArea string
---@field  MsgSeparator string
---@field  NonText string
---@field  Normal string
---@field  NormalFloat string
---@field  NormalNC string
---@field  Number string
---@field  Operator string
---@field  Pmenu string
---@field  PmenuSbar string
---@field  PmenuSel string
---@field  PmenuThumb string
---@field  PreCondit string
---@field  PreProc string
---@field  Question string
---@field  QuickFixLine string
---@field  RedrawDebugClear string
---@field  RedrawDebugComposed string
---@field  RedrawDebugNormal string
---@field  RedrawDebugRecompose string
---@field  Repeat string
---@field  Search string
---@field  SignColumn string
---@field  Special string
---@field  SpecialChar string
---@field  SpecialComment string
---@field  SpecialKey string
---@field  SpellBad string
---@field  SpellCap string
---@field  SpellLocal string
---@field  SpellRare string
---@field  Statement string
---@field  StatusLine string
---@field  StatusLineNC string
---@field  StorageClass string
---@field  String string
---@field  Structure string
---@field  Substitute string
---@field  TabLine string
---@field  TabLineFill string
---@field  TabLineSel string
---@field  Tag string
---@field  TermCursor string
---@field  TermCursorNC string
---@field  Title string
---@field  Todo string
---@field  Done string
---@field  Type string
---@field  Typedef string
---@field  Underlined string
---@field  VertSplit string
---@field  Visual string
---@field  VisualNOS string
---@field  VisualNC string
---@field  WarningMsg string
---@field  Whitespace string
---@field  WildMenu string
---@field  WinBar string
---@field  WinBarNC string
---@field  WinSeparator string
---@field  lCursor string

---@type GruvsquirrelStandardGroup
local g = require('gruvsquirrel.util.tbl').with_meta()
local mapper = require('gruvsquirrel.util.mapper')

local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      { { g.ColorColumn }, d.bg_dark0 },
      { { g.LineNr, g.LineNrAbove, g.LineNrBelow }, d.fg_gray3 },
      { { g.CursorLine }, d.__bg_dark1_ctermfg_hack },
      { { g.CursorColumn }, d.bg_dark5 },
      { { g.Visual, g.VisualNOS }, d.bg_dark3 },
      { { g.Statement, g.Conceal, g.Identifier, g.Field, g.Property }, d.fg_blue0 },
      { { g.Directory }, d.fg_blue0_bold },
      { { g.CurSearch, g.IncSearch }, d.fg_dark0_bg_yellow0 },
      { { g.Cursor, g.lCursor, g.TermCursor }, d._reverse },
      { { g.DiffAdd, g.DiffChange }, d.bg_green1 },
      { { g.DiffDelete }, d.fg_dark0_bg_purple4 },
      { { g.DiffText }, d.fg_green2_reverse },
      { { g.NonText, g.Whitespace }, d.fg_gray1 },
      { { g.EndOfBuffer }, d.fg_dark1_bg_dark0 },
      { { g.TermCursorNC }, d._none },
      { { g.Folded }, d.fg_gray0_bg_dark0_italic },
      { { g.FoldColumn, g.CursorLineFold }, d.fg_gray0_bg_dark0 },
      { { g.Substitute, g.Search }, d.fg_dark0_bg_green7 },
      { { g.CursorLineNr }, d.fg_yellow0_bg_dark1 },
      { { g.MatchParen, g.MatchParenCur }, d.fg_gray0_italic },
      { { g.ModeMsg, g.MoreMsg, g.Question }, d.fg_yellow0_bold },
      { { g.MsgArea }, d.fg_light0_bg_dark5 },
      { { g.MsgSeparator }, d.fg_dark5_bg_dark6 },
      { { g.Normal, g.NormalNC }, d.fg_light0_bg_dark0 },
      { { g.NormalFloat, g.Pmenu }, d.fg_light0_bg_dark6 },
      { { g.FloatBorder }, d.fg_gray1_bg_dark6 },
      { { g.FloatShadow }, d.bg_dark5 },
      { { g.FloatShadowThrough }, d.bg_dark5_blend100 },
      { { g.PmenuSel, g.QuickFixLine, g.WildMenu }, d.bg_blue3 },
      { { g.PmenuSbar, g.TabLineFill }, d.bg_dark6 },
      { { g.PmenuThumb }, d.bg_dark3 },
      { { g.SignColumn, g.CursorLineSign }, d._none },
      { { g.SpecialKey }, d.fg_green0_bg_dark0_bold },
      { { g.SpellBad }, d.sp_red0_undercurl },
      { { g.SpellCap }, d.sp_blue4_undercurl },
      { { g.SpellRare }, d.sp_purple3_undercurl },
      { { g.WinBar, g.TabLine }, d.fg_gray6_bg_dark6_bold },
      { { g.WinBarNC }, d.fg_gray4_bg_dark6 },
      { { g.StatusLine }, d.fg_gray6_bg_dark1 },
      { { g.StatusLineNC }, d.fg_gray6_bg_dark1_italic },
      { { g.TabLineSel }, d.fg_gray4 },
      { { g.Title, g.Function, g.FloatTitle }, d.fg_green0 },
      { { g.FloatTitle }, d.fg_dark6_bg_gray1_bold },
      { { g.WarningMsg }, d.fg_orange0 },
      { { g.Error, g.ErrorMsg }, d.fg_red0_bold },
      { { g.WinSeparator, g.VertSplit }, d.fg_gray1_bg_dark1 },
      { { g.Operator }, d.fg_orange0_italic },
      { { g.Comment }, d.fg_gray0_italic },
      { { g.PreProc, g.Define, g.Macro, g.Include, g.Structure }, d.fg_blue4 },
      {
        { g.Delimiter, g.Debug, g.StorageClass, g.Tag, g.Special, g.SpecialChar, g.SpecialComment },
        d.fg_orange0,
      },
      { { g.String }, d.fg_purple2_italic },
      { { g.Character, g.Boolean, g.Number, g.Float, g.Constant }, d.fg_purple0 },
      { { g.Keyword, g.Conditional, g.Repeat, g.Label, g.Exception }, d.fg_red0 },
      { { g.Type, g.Typedef }, d.fg_yellow0 },
      { { g.Variable }, d.fg_light0 },
      { { g.Underlined }, d.fg_blue0_underline },
      { { g.Todo }, d.fg_light2_bold_italic },
      { { g.Done }, d.fg_orange0_bold_italic },
      {
        {
          g.DiagnosticError,
          g.DiagnosticFloatingError,
          g.DiagnosticVirtualTextError,
          g.DiagnosticSignError,
        },
        d.fg_red0,
      },
      {
        {
          g.DiagnosticHint,
          g.DiagnosticFloatingHint,
          g.DiagnosticVirtualTextHint,
          g.DiagnosticSignHint,
        },
        d.fg_blue4,
      },
      {
        {
          g.DiagnosticInfo,
          g.DiagnosticFloatingInfo,
          g.DiagnosticVirtualTextInfo,
          g.DiagnosticSignInfo,
        },
        d.fg_gray2,
      },
      {
        {
          g.DiagnosticWarn,
          g.DiagnosticFloatingWarn,
          g.DiagnosticVirtualTextWarn,
          g.DiagnosticSignWarn,
        },
        d.fg_yellow0,
      },
      {
        { g.DiagnosticOk, g.DiagnosticFloatingOk, g.DiagnosticVirtualTextOk, g.DiagnosticSignOk },
        d.fg_light0,
      },
      { { g.DiagnosticUnderlineError }, d.sp_red0_underline },
      { { g.DiagnosticUnderlineHint }, d.sp_blue4_underline },
      { { g.DiagnosticUnderlineInfo }, d.sp_blue_underline },
      { { g.DiagnosticUnderlineWarn }, d.sp_yellow0_underline },
      { { g.DiagnosticUnderlineOk }, d.sp_green0_underline },
    })
  end,
}
return M
