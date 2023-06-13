local g = require("gruvsquirrel.highlight-groups.standard") -- groups
local d = require("gruvsquirrel.common.highlight_aliases")  -- highlight definitions
local mapper = require("gruvsquirrel.util.mapper")

local attributes = mapper.highlight_group_mapper {
  { { g.ColorColumn, },                                                                                     d.acorn },
  { { g.LineNr, g.LineNrAbove, g.LineNrBelow },                                                             d.chickenbones },
  { { g.CursorLine, },                                                                                      d.almond },
  { { g.CursorColumn },                                                                                     d.amaranth },
  { { g.Visual, g.VisualNOS },                                                                              d.anise },
  { { g.Statement, g.Conceal, g.Identifier, g.Field, g.Property, },                                         d.basil },
  { { g.Directory },                                                                                        d.dorito },
  { { g.CurSearch, g.IncSearch, },                                                                          d.bay },
  { { g.Cursor, g.lCursor, g.TermCursor },                                                                  d.beechnut },
  { { g.DiffAdd, g.DiffChange, },                                                                           d.black_walnut },
  { { g.DiffDelete, },                                                                                      d.borage },
  { { g.DiffText },                                                                                         d.flip_nut },
  { { g.NonText, g.Whitespace, g.EndOfBuffer },                                                             d.calend },
  { { g.TermCursorNC, },                                                                                    d.calendula },
  { { g.Folded },                                                                                           d.caraway },
  { { g.FoldColumn, g.CursorLineFold },                                                                     d.cashew },
  { { g.Substitute, g.Search },                                                                             d.celery },
  { { g.CursorLineNr },                                                                                     d.chamomile },
  { { g.MatchParen },                                                                                       d.barbaradoo },
  { { g.ModeMsg, g.MoreMsg, g.Question },                                                                   d.chia },
  { { g.MsgArea },                                                                                          d.chinquapin },
  { { g.MsgSeparator },                                                                                     d.chufa },
  { { g.Normal },                                                                                           d.cilantro },
  { { g.NormalFloat, g.Pmenu, },                                                                            d.coconut },
  { { g.FloatBorder },                                                                                      d.doowhat },
  { { g.NormalNC },                                                                                         d.cola_nut },
  { { g.PmenuSel, g.QuickFixLine, g.WildMenu, },                                                            d.comfrey },
  { { g.PmenuSbar, g.TabLineFill },                                                                         d.coriander },
  { { g.PmenuThumb },                                                                                       d.anise },
  { { g.SignColumn, g.CursorLineSign, },                                                                    d.calendula },
  { { g.SpecialKey },                                                                                       d.chill },
  { { g.SpellBad },                                                                                         d.fennel },
  { { g.SpellCap },                                                                                         d.fenugreek },
  { { g.SpellRare },                                                                                        d.feverfew },
  { { g.StatusLine, g.WinBar },                                                                             d.filbert },
  { { g.StatusLineNC, g.TabLine, g.WinBarNC },                                                              d.dowatnut },
  { { g.TabLineSel },                                                                                       d.pepsi },
  { { g.Title, g.Function, },                                                                               d.ginkgo_nut },
  { { g.WarningMsg, },                                                                                      d.jackfruit_seed },
  { { g.Error, g.ErrorMsg, },                                                                               d.hazelnut },
  { { g.WinSeparator, g.VertSplit },                                                                        d.hemp },
  { { g.Operator },                                                                                         d.hibiscus },
  { { g.Comment },                                                                                          d.hickory_nut },
  { { g.PreProc, g.Define, g.Macro, g.Include, g.Structure, },                                              d.indian_nut },
  { { g.Delimiter, g.Debug, g.StorageClass, g.Tag, g.Special, g.SpecialChar, g.SpecialComment },            d.jackfruit_seed },
  { { g.String },                                                                                           d.kola_nut },
  { { g.Character, g.Boolean, g.Number, g.Float, g.Constant, },                                             d.lavender },
  { { g.Keyword, g.Conditional, g.Repeat, g.Label, g.Exception, },                                          d.lemon_balm },
  { { g.Type, g.Typedef, },                                                                                 d.lemongrass },
  { { g.Variable, },                                                                                        d.peanut },
  { { g.Underlined, },                                                                                      d.macadamia_nut },
  { { g.Todo, },                                                                                            d.malabar_chestnut },
  { { g.Done, },                                                                                            d.marjoram },
  { { g.DiagnosticError, g.DiagnosticFloatingError, g.DiagnosticVirtualTextError, g.DiagnosticSignError, }, d.lemon_balm },
  { { g.DiagnosticHint, g.DiagnosticFloatingHint, g.DiagnosticVirtualTextHint, g.DiagnosticSignHint, },     d.indian_nut },
  { { g.DiagnosticInfo, g.DiagnosticFloatingInfo, g.DiagnosticVirtualTextInfo, g.DiagnosticSignInfo, },     d.nacho },
  { { g.DiagnosticWarn, g.DiagnosticFloatingWarn, g.DiagnosticVirtualTextWarn, g.DiagnosticSignWarn, },     d.lemongrass },
  { { g.DiagnosticOk, g.DiagnosticFloatingOk, g.DiagnosticVirtualTextOk, g.DiagnosticSignOk, },             d.peanut },
  { { g.DiagnosticUnderlineError, },                                                                        d.rosemary },
  { { g.DiagnosticUnderlineHint, },                                                                         d.sage },
  { { g.DiagnosticUnderlineInfo, },                                                                         d.sesame },
  { { g.DiagnosticUnderlineWarn, },                                                                         d.sunflower },
  { { g.DiagnosticUnderlineOk, },                                                                           d.tarragon },
}

return attributes
