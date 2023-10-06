local string_util = require('gruvsquirrel.util.string')

local M = {
  orig_fzf_default_opts = nil,
  fzflua_defaults_enabled = false,
}

M.setup = function()
  -- Change icon set on background change
  vim.api.nvim_create_autocmd("OptionSet", {
    group = vim.api.nvim_create_augroup('GruvsquirrelSetBackground', { clear = true }),
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

M.enable_autocmd_fzflua_defaults = function(enable)
  M.fzflua_defaults_enabled = enable or true
  local fzflua_enable = function()
    if not M.orig_fzf_default_opts then
      M.orig_fzf_default_opts = vim.env.FZF_DEFAULT_OPTS or ''
    end
    vim.env.FZF_DEFAULT_OPTS = M.orig_fzf_default_opts .. ' --color=' .. (vim.o.background or 'dark')
    return not M.fzflua_defaults_enabled
  end

  vim.api.nvim_create_autocmd("ColorschemePre", {
    group = vim.api.nvim_create_augroup('GruvsquirrelFzfLuaDefaults', { clear = true }),
    callback = fzflua_enable,
  })

  fzflua_enable()
end


return M
