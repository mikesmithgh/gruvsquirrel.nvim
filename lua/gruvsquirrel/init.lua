local cache = require('gruvsquirrel.cache')
local config = require('gruvsquirrel.config')

local M = {}

local function pre_flight_check() -- should this be healthcheck?
  if vim.version().minor < 7 then
    vim.notify_once('gruvsquirrel.nvim: you must use neovim 0.7 or higher')
    return false
  end
  return true
end

M.setup = function()
  if pre_flight_check() then
    config.setup() -- not currently used
  end
end

M.load = function(colors_name)
  if not colors_name then
    colors_name = 'gruvsquirrel'
  end
  if vim.g.colors_name then
    vim.cmd('hi clear')
  end

  -- vim.o.background = 'dark' -- TODO: change if I ever add a light variant
  vim.o.termguicolors = true
  vim.g.colors_name = colors_name

  local highlight_definitions = config.options.cache and cache.read(colors_name) or nil
  if not highlight_definitions then
    highlight_definitions = require('gruvsquirrel.highlight-definitions').attributes()
    vim.schedule(function()
      cache.write(colors_name, highlight_definitions)
    end)
  end

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
        },
      }
      vim.notify(vim.inspect(warn_msg), vim.log.levels.WARN, {})
    end
  end
end

require('gruvsquirrel.autocmd').setup()
-- TODO: add a flag for dev utilities
-- dev stuff
require('gruvsquirrel.dev').setup()
return M
