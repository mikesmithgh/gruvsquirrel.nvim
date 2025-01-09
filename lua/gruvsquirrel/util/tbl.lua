local M = {}

M.with_meta = function(t)
  local metatable = {}
  metatable.__index = function(_, key)
    vim.schedule(function()
      vim.api.nvim_notify(
        string.format('gruvsquirrel.nvim: %s is not defined', key),
        vim.log.levels.WARN,
        {}
      )
    end)
  end
  return setmetatable(t, metatable)
end

return M
