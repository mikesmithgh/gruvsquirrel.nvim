local M = {}

M.endswith = function(target, ending)
  return ending == "" or target:sub(- #ending) == ending
end

return M
