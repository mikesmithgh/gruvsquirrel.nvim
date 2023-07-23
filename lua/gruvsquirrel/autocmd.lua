local string_util = require('gruvsquirrel.util.string')

local M = {}

M.setup = function()
  -- Change icon set on background change
  vim.api.nvim_create_autocmd("OptionSet", {
    pattern = "background",
    callback =
        vim.schedule_wrap((function()
          if vim.o.background == 'light' then
            if string_util.endswith(vim.g.colors_name, 'squirrel') then
              vim.notify([[gruvsquirrel.nvim background is set to light, don't do that]], vim.log.levels.WARN, {})
              vim.o.background = 'dark'
            end
          end
        end
        ))
  })
end

return M
