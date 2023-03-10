local config = require("gruvsquirrel.config")

local M = {}

local function preFlightCheck() -- should this be healthcheck?
  if vim.version().minor < 7 then
    vim.notify_once("gruvsquirrel.nvim: you must use neovim 0.7 or higher")
    return false
  end

  -- TODO: change to check
  vim.o.termguicolors = true

  -- TODO: add background color check
  return true
end

M.setup = function()

  if preFlightCheck() then

    config.setup() -- not currently used

    -- TODO: convert to Lua when API is available
    if vim.g.colors_name then
      vim.cmd("hi clear")
    end

    vim.g.colors_name = "gruvsquirrel"

    local highlight_definitions = require("gruvsquirrel.highlight-definitions")
    -- add highlights
    for group, options in pairs(highlight_definitions) do
      local _, err = pcall(vim.api.nvim_set_hl, 0, group, options)
      if err then
        local warn_msg = {
          gruvsquirrel_error = {
            msg = 'error setting highlight',
            group = group,
            options = options,
            error = err,
          }
        }
        vim.notify(vim.inspect(warn_msg), vim.log.levels.WARN, {})
      end
    end
  end
end

return M
