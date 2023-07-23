local M = {
  attributes = function()
    local all_attributes = {}
    local runtime_files = vim.api.nvim_get_runtime_file("lua/gruvsquirrel/highlight-definitions/*.lua", true)
    local prefix = 'gruvsquirrel.highlight-definitions.'
    for _, path in pairs(runtime_files) do
      local name = vim.fn.fnamemodify(path, ':t:r') -- :t => filename :r => no file extension
      if name ~= 'init' then
        local success, hl_def = pcall(require, prefix .. name)
        if success and type(hl_def.attributes) == 'function' then
          local hl_def_attributes = hl_def.attributes()
          if hl_def_attributes ~= nil and type(hl_def_attributes) == 'table' then
            all_attributes = vim.tbl_deep_extend("force", all_attributes, hl_def_attributes)
          end
        end
      end
    end
    return all_attributes
  end
}

return M
