local M = {}
local extra_high = function()
  local wins = vim.api.nvim_list_wins()
  for _, w in pairs(wins) do
    local winhighlights = vim.api.nvim_get_option_value('winhighlight', { scope = 'local', win = w })
    if not winhighlights:match('CursorColumn') then
      local winconfig = vim.api.nvim_win_get_config(w)
      for wh in winhighlights:gmatch('([^,]+)') do
        local split_by_colon = wh:gmatch('([^:]+)')
        local source_highlight = split_by_colon()
        if source_highlight == 'Normal' or (winconfig.relative ~= nil and winconfig.relative ~= '') then
          local target_hl_name = split_by_colon()
          if target_hl_name == nil or target_hl_name == '' then
            target_hl_name = 'NormalFloat'
          end
          -- vim.print('target ' .. target_hl_name)
          local target_hl = vim.api.nvim_get_hl(0, { name = target_hl_name, link = false })
          local normal_float_hl = vim.api.nvim_get_hl(0, { name = 'NormalFloat', link = false })
          if target_hl.bg == normal_float_hl.bg then
            if winhighlights == nil or winhighlights == '' then
              winhighlights = 'CursorColumn:GruvsquirrelCursorColumnFloat'
            else
              winhighlights = winhighlights .. ',CursorColumn:GruvsquirrelCursorColumnFloat'
            end
            -- vim.api.nvim_set_option_value('cursorcolumn', true, { scope = 'local', win = w })
            vim.api.nvim_set_option_value('winhighlight', winhighlights, { scope = 'local', win = w })
          end
        end
      end
    end
  end
end

M.setup = function()
  vim.api.nvim_create_augroup('GruvsquirrelFloatLikeHighlights', { clear = true })
  vim.api.nvim_create_autocmd({ 'WinResized' }, {
    group = 'GruvsquirrelFloatLikeHighlights',
    pattern = '*',
    callback = vim.schedule_wrap(extra_high),
  })
  vim.api.nvim_create_autocmd({ 'WinEnter' }, {
    group = 'GruvsquirrelFloatLikeHighlights',
    callback = vim.schedule_wrap(extra_high),
  })
  vim.api.nvim_create_autocmd({ 'Filetype' }, {
    group = 'GruvsquirrelFloatLikeHighlights',
    pattern = { 'diff', 'undotree' },
    callback = function(ev)
      -- This is a workaround until the following feature is implemented:
      -- https://github.com/mbbill/undotree/issues/149
      -- diff is the filetype of the window underneath undotree
      for _, w in pairs(vim.fn.win_findbuf(ev.buf)) do
        local winhighlights = vim.api.nvim_get_option_value('winhighlight', { scope = 'local', win = w })
        if not winhighlights:match('Normal') then
          if winhighlights == nil or winhighlights == '' then
            winhighlights = 'Normal:NormalFloat'
          else
            winhighlights = winhighlights .. ',Normal:NormalFloat,CursorColumn:GruvsquirrelCursorColumnFloat'
          end
          vim.api.nvim_set_option_value('winhighlight', winhighlights, { scope = 'local', win = w })
        end
      end
    end,
  })
end

return M
