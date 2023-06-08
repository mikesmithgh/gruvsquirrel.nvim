local M = {}

M.Set = function(list)
  local set = {}
  for _, l in ipairs(list) do set[l] = l end
  return set
end

-- M.Color = function(list)
--   local set = {}
--   for _, l in ipairs(list) do
--     if type(l) == 'table' then
--       local hex = l[1]
--       local name = l[2]
--       set[hex] = hex
--       if name ~= nil then
--         set[name] = hex
--       end
--     else
--       set[l] = l
--     end
--   end
--   return set
-- end

return M
