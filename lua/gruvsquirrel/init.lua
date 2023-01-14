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

    local groups = require("gruvsquirrel.colors.gruvsquirrel")
    -- print(vim.inspect.inspect(groups))

    -- add highlights
    for group, options in pairs(groups) do
      vim.api.nvim_set_hl(0, group, options)
    end
  end
end

return M
