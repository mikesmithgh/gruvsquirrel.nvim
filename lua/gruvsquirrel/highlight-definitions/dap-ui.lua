local g = require('gruvsquirrel.highlight-groups.dap-ui') -- groups
local mapper = require('gruvsquirrel.util.mapper')

local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      { { g.DapUIValue, g.DapUIFrameName, g.DapUIVariable }, d.peanut },
      { { g.DapUIFloatNormal, g.DapUINormal }, d.coconut },
      { { g.DapUISource, g.DapUIType }, d.lavender },
      { { g.DapUIStop, g.DapUIStopNC, g.DapUIWatchesEmpty, g.DapUIWatchesError }, d.coco_gogo },
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
        d.chill,
      },
      { { g.DapUICurrentFrameName, g.DapUIBreakpointsCurrentLine }, d.chipotle },
      {
        { g.DapUIBreakpointsDisabledLine, g.DapUIUnavailable, g.DapUIUnavailableNC },
        d.coco_ha_dappydoo,
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
        d.coco_ha_skippy,
      },
      { { g.DapUIModifiedValue }, d.veggie },
    })
  end,
}

return M
