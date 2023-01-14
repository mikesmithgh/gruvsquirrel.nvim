local M = {}

M.highlight_mapper = function(highlight_groups, highlight_definition, highlight_results)
  local result = {}
  for _, v in ipairs(highlight_groups) do
    result[v] = highlight_definition
  end
  return vim.tbl_extend("force", highlight_results, result)
end

M.highlight_group_mapper = function(highlight_group_list)
  local result = {}
  for _, hl_group in pairs(highlight_group_list) do
    result = M.highlight_mapper(hl_group[1], hl_group[2], result)
  end
  return result
end

return M
