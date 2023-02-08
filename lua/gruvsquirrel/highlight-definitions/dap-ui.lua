local d = require("gruvsquirrel.common.highlight_aliases") -- highlight definitions
local g = require("gruvsquirrel.highlight-groups.dap-ui") -- groups
local mapper = require("gruvsquirrel.util.mapper")

local attributes = mapper.highlight_group_mapper {
  { { g.DapUIValue, g.DapUIFrameName, g.DapUIVariable, }, d.cilantro },
  { { g.DapUIFloatNormal, g.DapUINormal, }, d.coconut },
  { { g.DapUISource, g.DapUIType, }, d.lavender },
  { { g.DapUIStop, g.DapUIStopNC, g.DapUIWatchesEmpty, g.DapUIWatchesError, }, d.lemon_balm },
  { { g.DapUIBreakpointsInfo, g.DapUIPlayPause, g.DapUIPlayPauseNC, g.DapUIRestart, g.DapUIRestartNC, g.DapUIThread, g.DapUIWatchesValue, }, d.ginkgo_nut },
  { { g.DapUICurrentFrameName, g.DapUIBreakpointsCurrentLine, }, d.chipotle },
  { { g.DapUIBreakpointsDisabledLine, g.DapUIUnavailable, g.DapUIUnavailableNC, }, d.dappydoo },
  { { g.DapUIBreakpointsLine, g.DapUIBreakpointsPath, g.DapUIDecoration, g.DapUIFloatBorder, g.DapUILineNumber, g.DapUIScope, g.DapUIStepBack, g.DapUIStepBackNC, g.DapUIStepInto, g.DapUIStepIntoNC, g.DapUIStepOut, g.DapUIStepOutNC, g.DapUIStepOver, g.DapUIStepOverNC, g.DapUIStoppedThread, }, d.indian_nut },
  { { g.DapUIModifiedValue, }, d.veggie },
}

return attributes
