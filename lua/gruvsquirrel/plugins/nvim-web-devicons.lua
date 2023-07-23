-- expected usage:
--   require('gruvsquirrel.plugins.nvim-web-devicons').setup({
--     your config here
--   })

local success, devicons = pcall(require, 'nvim-web-devicons')
if not success then
  vim.notify('gruvsquirrel.nvim `nvim-web-devicons` was not found', vim.log.levels.ERROR, {})
  return {}
end

local highlight_definitions = require('gruvsquirrel.highlight-definitions.nvim-web-devicons')
local M = {}
local icons = nil
local icons_by_filename = nil
local icons_by_file_extension = nil

M.get_icons = function()
  vim.notify('do not use get_icons() until https://github.com/nvim-tree/nvim-web-devicons/issues/261 is fixed',
    vim.log.levels.ERROR, {})
  if true then -- TODO: remove this if the above buf is fixed
    return {}
  end
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

M.icons_by_filename = function()
  if icons_by_filename then
    return icons_by_filename
  end

  local orig_by_filename = vim.tbl_deep_extend("force", {}, require("nvim-web-devicons-light").icons_by_filename)
  icons_by_filename = vim.tbl_map(function(icon)
    local hl_def = highlight_definitions['DevIcon' .. icon.name] or {}
    local fg = hl_def.fg or icon.color
    return vim.tbl_extend("force", icon, { color = fg })
  end, orig_by_filename)

  return icons_by_filename
end

M.icons_by_file_extension = function()
  if icons_by_file_extension then
    return icons_by_file_extension
  end

  local orig_by_file_extension = vim.tbl_deep_extend("force", {},
    require("nvim-web-devicons-light").icons_by_file_extension)
  icons_by_file_extension = vim.tbl_map(function(icon)
    local hl_def = highlight_definitions['DevIcon' .. icon.name] or {}
    local fg = hl_def.fg or icon.color
    return vim.tbl_extend("force", icon, { color = fg })
  end, orig_by_file_extension)

  return icons_by_file_extension
end

M.overrides = {
  override_by_filename = M.icons_by_filename(),
  override_by_extension = M.icons_by_file_extension(),
}

-- wrapper method for nvim-web-devicons
-- set highlight overrides but allow user continue providing overrides
M.setup = function(o)
  local opts = type(o) == 'table' and vim.tbl_extend('force', {}, o) or {}
  opts.override_by_filename = vim.tbl_extend('force',
    M.overrides.override_by_filename,
    opts.override_by_filename or {}
  )
  opts.override_by_extension = vim.tbl_extend('force',
    M.overrides.override_by_extension,
    opts.override_by_extension or {}
  )
  devicons.setup(opts)
end

return M
