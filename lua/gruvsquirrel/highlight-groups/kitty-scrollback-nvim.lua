local with_meta = require('gruvsquirrel.util.tbl').with_meta

--- DapUI Highlight Groups
---@class GruvsquirrelKittyScrollbackNvimGroup
local M = {
  KittyScrollbackNvimNormal = 'KittyScrollbackNvimNormal',
  KittyScrollbackNvimHeart = 'KittyScrollbackNvimHeart',
  KittyScrollbackNvimSpinner = 'KittyScrollbackNvimSpinner',
  KittyScrollbackNvimReady = 'KittyScrollbackNvimReady',
  KittyScrollbackNvimKitty = 'KittyScrollbackNvimKitty',
  KittyScrollbackNvimVim = 'KittyScrollbackNvimVim',
  KittyScrollbackNvimPasteWinNormal = 'KittyScrollbackNvimPasteWinNormal',
  KittyScrollbackNvimPasteWinFloatBorder = 'KittyScrollbackNvimPasteWinFloatBorder',
  KittyScrollbackNvimPasteWinFloatTitle = 'KittyScrollbackNvimPasteWinFloatTitle',
  KittyScrollbackNvimVisual = 'KittyScrollbackNvimVisual',
}

---@type GruvsquirrelKittyScrollbackNvimGroup
M = with_meta(M)

return M
