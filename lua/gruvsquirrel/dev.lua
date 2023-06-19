local M = {}

-- local hex = function(n)
--   if n == nil then
--     return "no color"
--   end
--   return string.format("#%06x", n)
-- end
--
-- M.something = function()
--   local cword = vim.fn.expand('<cword>')
--   local hl = vim.api.nvim_get_hl_by_name(cword, true)
--   vim.notify(cword, vim.log.levels.INFO, {})
--   vim.notify(vim.inspect(hl), vim.log.levels.INFO, {})
--   vim.notify(hex(hl['foreground']), vim.log.levels.INFO, {})
-- end


local colorize_opts = {
  RGB      = false,        -- #RGB hex codes
  RRGGBB   = true,         -- #RRGGBB hex codes
  names    = false,        -- "Name" codes like Blue
  RRGGBBAA = false,        -- #RRGGBBAA hex codes
  rgb_fn   = false,        -- CSS rgb() and rgba() functions
  hsl_fn   = false,        -- CSS hsl() and hsla() functions
  css      = false,        -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
  css_fn   = false,        -- Enable all CSS *functions*: rgb_fn, hsl_fn
  -- Available modes: foreground, background
  mode     = 'background', -- Set the display mode.
}

M.setup = function()
  local exists, colorizer = pcall(require, "colorizer")
  if not exists then
    return M
  end

  vim.api.nvim_create_augroup('GruvsquirrelColorizeCmp', { clear = true })
  vim.api.nvim_create_autocmd({ 'Filetype' }, {
    group = 'GruvsquirrelColorizeCmp',
    pattern = { 'cmp_docs', 'noice' },
    callback = function(ev)
      require('colorizer').attach_to_buffer(ev.buf, colorize_opts)
    end,
  })
end

return M

