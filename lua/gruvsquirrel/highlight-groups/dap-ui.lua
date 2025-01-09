-- See https://github.com/rcarriga/nvim-dap-ui/blob/b80227ea56a48177786904f6322abc8b2dc0bc36/lua/dapui/config/highlights.lua
local with_meta = require('gruvsquirrel.util.tbl').with_meta

--- DapUI Highlight Groups
---@class GruvsquirrelDapUIGroup
local M = {
  DapUIBreakpointsCurrentLine = 'DapUIBreakpointsCurrentLine',
  DapUIBreakpointsDisabledLine = 'DapUIBreakpointsDisabledLine',
  DapUIBreakpointsInfo = 'DapUIBreakpointsInfo',
  DapUIBreakpointsLine = 'DapUIBreakpointsLine',
  DapUIBreakpointsPath = 'DapUIBreakpointsPath',
  DapUICurrentFrameName = 'DapUICurrentFrameName',
  DapUIDecoration = 'DapUIDecoration',
  DapUIFloatBorder = 'DapUIFloatBorder',
  DapUIFloatNormal = 'DapUIFloatNormal',
  DapUIFrameName = 'DapUIFrameName',
  DapUILineNumber = 'DapUILineNumber',
  DapUIModifiedValue = 'DapUIModifiedValue',
  DapUINormal = 'DapUINormal',
  DapUIPlayPause = 'DapUIPlayPause',
  DapUIPlayPauseNC = 'DapUIPlayPauseNC',
  DapUIRestart = 'DapUIRestart',
  DapUIRestartNC = 'DapUIRestartNC',
  DapUIScope = 'DapUIScope',
  DapUISource = 'DapUISource',
  DapUIStepBack = 'DapUIStepBack',
  DapUIStepBackNC = 'DapUIStepBackNC',
  DapUIStepInto = 'DapUIStepInto',
  DapUIStepIntoNC = 'DapUIStepIntoNC',
  DapUIStepOut = 'DapUIStepOut',
  DapUIStepOutNC = 'DapUIStepOutNC',
  DapUIStepOver = 'DapUIStepOver',
  DapUIStepOverNC = 'DapUIStepOverNC',
  DapUIStop = 'DapUIStop',
  DapUIStopNC = 'DapUIStopNC',
  DapUIStoppedThread = 'DapUIStoppedThread',
  DapUIThread = 'DapUIThread',
  DapUIType = 'DapUIType',
  DapUIUnavailable = 'DapUIUnavailable',
  DapUIUnavailableNC = 'DapUIUnavailableNC',
  DapUIValue = 'DapUIValue',
  DapUIVariable = 'DapUIVariable',
  DapUIWatchesEmpty = 'DapUIWatchesEmpty',
  DapUIWatchesError = 'DapUIWatchesError',
  DapUIWatchesValue = 'DapUIWatchesValue',
}

---@type GruvsquirrelDapUIGroup
M = with_meta(M)

return M
