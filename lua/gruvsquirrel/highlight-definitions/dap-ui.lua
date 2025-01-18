local g = require('gruvsquirrel.highlight-groups.dap-ui') -- groups
local mapper = require('gruvsquirrel.util.mapper')

local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      { { g.DapUIValue, g.DapUIFrameName, g.DapUIVariable }, d.fg_light0 },
      { { g.DapUIFloatNormal, g.DapUINormal }, d.fg_light0_bg_dark6 },
      { { g.DapUISource, g.DapUIType }, d.fg_purple0 },
      {
        { g.DapUIStop, g.DapUIStopNC, g.DapUIWatchesEmpty, g.DapUIWatchesError },
        d.fg_red0_bg_dark6,
      },
      {
        {
          g.DapUIBreakpointsInfo,
          g.DapUIPlayPause,
          g.DapUIPlayPauseNC,
          g.DapUIRestart,
          g.DapUIRestartNC,
          g.DapUIThread,
          g.DapUIWatchesValue,
        },
        d.fg_green0_bg_dark0_bold,
      },
      { { g.DapUICurrentFrameName, g.DapUIBreakpointsCurrentLine }, d.fg_green0_bold },
      {
        { g.DapUIBreakpointsDisabledLine, g.DapUIUnavailable, g.DapUIUnavailableNC },
        d.fg_dark3_bg_dark6,
      },
      {
        {
          g.DapUIBreakpointsLine,
          g.DapUIBreakpointsPath,
          g.DapUIDecoration,
          g.DapUIFloatBorder,
          g.DapUILineNumber,
          g.DapUIScope,
          g.DapUIStepBack,
          g.DapUIStepBackNC,
          g.DapUIStepInto,
          g.DapUIStepIntoNC,
          g.DapUIStepOut,
          g.DapUIStepOutNC,
          g.DapUIStepOver,
          g.DapUIStepOverNC,
          g.DapUIStoppedThread,
        },
        d.fg_blue4_bg_dark6,
      },
      { { g.DapUIModifiedValue }, d.fg_blue4_bold },
    })
  end,
}

return M
