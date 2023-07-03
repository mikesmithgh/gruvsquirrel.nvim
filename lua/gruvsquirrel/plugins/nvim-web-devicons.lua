-- expected usage:
-- require('nvim-web-devicons').setup({
--
--   override = require('gruvsquirrel.plugins.nvim-web-devicons').get_icons(),
--   ...
-- })

local success, devicons = pcall(require, 'nvim-web-devicons')
if not success then
  vim.notify('gruvsquirrel.nvim `nvim-web-devicons` was not found', vim.log.levels.WARN, {})
  return {
    get_icons = function()
      return {}
    end
  }
end

local highlight_definitions = require('gruvsquirrel.highlight-definitions.nvim-web-devicons')
local M = {}
local icons = nil

M.get_icons = function()
  if icons then
    return icons
  end

  local orig_icons = vim.tbl_deep_extend("force", {}, devicons.get_icons())
  icons = vim.tbl_map(function(icon)
    local hl_def = highlight_definitions['DevIcon' .. icon.name] or {}
    local fg = hl_def.fg or icon.color
    return vim.tbl_extend("force", icon, { color = fg })
  end, orig_icons)

  local default_icon = vim.tbl_deep_extend("force", {}, devicons.get_default_icon())
  local hl_default = highlight_definitions['DevIconDefault'] or {}
  default_icon.color = hl_default.fg or default_icon.color
  icons.default_icon = default_icon

  return icons
end

return M
