local M = {}

M.with_meta = function(t)
  local metatable = {}
  metatable.__index = function(_, key)
    return key
  end
  return setmetatable(t or {}, metatable)
end

return M
