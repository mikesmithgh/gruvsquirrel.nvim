local M = {}

M.endswith = function(target, ending)
  return target and (ending == '' or target:sub(-#ending) == ending)
end

return M
