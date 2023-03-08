local M = {}

local hex = function(n)
  if n == nil then
    return "no color"
  end
  return string.format("#%06x", n)
end

M.something = function()
  local cword = vim.fn.expand('<cword>')
  local hl = vim.api.nvim_get_hl_by_name(cword, true)
  vim.notify(cword, vim.log.levels.INFO, {})
  vim.notify(vim.inspect(hl), vim.log.levels.INFO, {})
  vim.notify(hex(hl['foreground']), vim.log.levels.INFO, {})
end

return M
