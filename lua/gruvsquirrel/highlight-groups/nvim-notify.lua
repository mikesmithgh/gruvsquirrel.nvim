-- See https://github.com/rcarriga/nvim-notify/blob/master/lua/notify/config/highlights.lua
local with_meta = require('gruvsquirrel.util.tbl').with_meta

--- Notify Highlight Groups
---@class GruvsquirrelNotifyGroup
local M = {
  NotifyBackground = 'NotifyBackground',
  NotifyDEBUGBody = 'NotifyDEBUGBody',
  NotifyDEBUGBorder = 'NotifyDEBUGBorder',
  NotifyDEBUGIcon = 'NotifyDEBUGIcon',
  NotifyDEBUGTitle = 'NotifyDEBUGTitle',
  NotifyERRORBody = 'NotifyERRORBody',
  NotifyERRORBorder = 'NotifyERRORBorder',
  NotifyERRORIcon = 'NotifyERRORIcon',
  NotifyERRORTitle = 'NotifyERRORTitle',
  NotifyINFOBody = 'NotifyINFOBody',
  NotifyINFOBorder = 'NotifyINFOBorder',
  NotifyINFOIcon = 'NotifyINFOIcon',
  NotifyINFOTitle = 'NotifyINFOTitle',
  NotifyLogTime = 'NotifyLogTime',
  NotifyLogTitle = 'NotifyLogTitle',
  NotifyTRACEBody = 'NotifyTRACEBody',
  NotifyTRACEBorder = 'NotifyTRACEBorder',
  NotifyTRACEIcon = 'NotifyTRACEIcon',
  NotifyTRACETitle = 'NotifyTRACETitle',
  NotifyWARNBody = 'NotifyWARNBody',
  NotifyWARNBorder = 'NotifyWARNBorder',
  NotifyWARNIcon = 'NotifyWARNIcon',
  NotifyWARNTitle = 'NotifyWARNTitle',
}

---@type GruvsquirrelNotifyGroup
M = with_meta(M)

return M
