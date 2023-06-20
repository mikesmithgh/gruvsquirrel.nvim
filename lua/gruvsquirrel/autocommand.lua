local M = {}

local winhighlight_to_tbl = function(winhl)
  local winhl_tbl = {}
  for wh_pair in winhl:gmatch('([^,]+)') do
    local wh_key = nil
    local wh_value = nil
    for wh_kv in wh_pair:gmatch('([^:]+)') do
      if wh_key == nil then
        wh_key = wh_kv
      elseif wh_value == nil then
        wh_value = wh_kv
        break
      end
    end
    if wh_key ~= nil then
      winhl_tbl[wh_key] = wh_value
    end
  end
  return winhl_tbl
end

local tbl_to_winhighlight = function(winhl_tbl)
  local winhl = ''
  for k, v in pairs(winhl_tbl) do
    if winhl == '' then
      winhl = k .. ':' .. v
    else
      winhl = winhl .. ',' .. k .. ':' .. v
    end
  end
  return winhl
end

local mark_winhl_tbl = function(winhl_tbl)
  winhl_tbl['__gruvsquirrel'] = 'done'
  return winhl_tbl
end

local winhl_tbl_is_marked = function(winhl_tbl)
  return winhl_tbl['__gruvsquirrel'] == 'done'
end

local float_like_filetypes = {
  ['undotree'] = true,
  ['diff'] = true,
  ['neo-tree-popup'] = true,
}

local treat_as_normal_window = function(w)
  if vim.fn.getwinvar(w, 'neo_tree_preview') == 1 then
    vim.fn.setwinvar(w, 'gruvsquirrelnotfloatlike', 1)
    return true
  end

  return vim.fn.getwinvar(w, 'gruvsquirrelnotfloatlike') == 1
end


local is_float_like = function(w)
  local winconfig = vim.api.nvim_win_get_config(w)
  local filetype = vim.api.nvim_get_option_value('filetype', { win = w })

  local is_float_window = winconfig.relative ~= nil and winconfig.relative ~= ''
  local treat_as_normal_win = treat_as_normal_window(w)

  if is_float_window and winconfig.relative == 'win' then
    -- neotree using nui and nui creates a relative window to act as border behind actual window
    if treat_as_normal_win then
      vim.fn.setwinvar(winconfig.win, 'gruvsquirrelnotfloatlike', 1)
    end
  end

  return (is_float_window or float_like_filetypes[filetype]) and not treat_as_normal_win
end


-- for key, val in pairs(all_options) do if val.global_local == false and val.scope == "win" then result = result .. "|" .. key .. "=" .. tostring(v[key] or "<not set>") end end

local update_float_like_highlights = function()
  local wins = vim.api.nvim_list_wins()
  for _, w in pairs(wins) do
    local winhighlights = vim.api.nvim_get_option_value('winhighlight', { win = w })
    local winhl_tbl = winhighlight_to_tbl(winhighlights)
    -- if not winhl_tbl_is_marked(winhl_tbl) then
    if is_float_like(w) then
      winhl_tbl.CursorColumn = 'GruvsquirrelCursorColumnFloat'
      winhl_tbl.Normal = 'NormalFloat'
      winhl_tbl.NormalFloat = nil
      winhl_tbl.FloatBorder = nil
      vim.api.nvim_set_option_value(
        'winhighlight',
        tbl_to_winhighlight(mark_winhl_tbl(winhl_tbl)),
        { win = w }
      )
    end
    -- end
  end
end

-- local extra_high = function()
--   local wins = vim.api.nvim_list_wins()
--   for _, w in pairs(wins) do
--     local winhighlights = vim.api.nvim_get_option_value('winhighlight', { scope = 'local', win = w })
--     if not winhighlights:match('CursorColumn') then
--       local winconfig = vim.api.nvim_win_get_config(w)
--       for wh in winhighlights:gmatch('([^,]+)') do
--         local split_by_colon = wh:gmatch('([^:]+)')
--         local source_highlight = split_by_colon()
--         if source_highlight == 'Normal' or (winconfig.relative ~= nil and winconfig.relative ~= '') then
--           local target_hl_name = split_by_colon()
--           if target_hl_name == nil or target_hl_name == '' then
--             target_hl_name = 'NormalFloat'
--           end
--           -- vim.print('target ' .. target_hl_name)
--           local target_hl = vim.api.nvim_get_hl(0, { name = target_hl_name, link = false })
--           local normal_float_hl = vim.api.nvim_get_hl(0, { name = 'NormalFloat', link = false })
--           if target_hl.bg == normal_float_hl.bg then
--             if winhighlights == nil or winhighlights == '' then
--               winhighlights = 'CursorColumn:GruvsquirrelCursorColumnFloat'
--             else
--               winhighlights = winhighlights .. ',CursorColumn:GruvsquirrelCursorColumnFloat'
--             end
--             -- vim.api.nvim_set_option_value('cursorcolumn', true, { scope = 'local', win = w })
--             vim.api.nvim_set_option_value('winhighlight', winhighlights, { scope = 'local', win = w })
--           end
--         end
--       end
--     end
--   end
-- end

M.setup = function()
  vim.api.nvim_create_augroup('GruvsquirrelFloatLikeHighlights', { clear = true })
  vim.api.nvim_create_autocmd({ 'WinResized' }, {
    group = 'GruvsquirrelFloatLikeHighlights',
    pattern = '*',
    callback = vim.schedule_wrap(update_float_like_highlights),
  })
  vim.api.nvim_create_autocmd({ 'WinEnter' }, {
    group = 'GruvsquirrelFloatLikeHighlights',
    callback = vim.schedule_wrap(update_float_like_highlights),
  })
  -- vim.api.nvim_create_autocmd({ 'Filetype' }, {
  --   group = 'GruvsquirrelFloatLikeHighlights',
  --   pattern = { 'diff', 'undotree', 'neo-tree-popup' },
  --   callback = function(ev)
  --     -- This is a workaround until the following feature is implemented:
  --     -- https://github.com/mbbill/undotree/issues/149
  --     -- diff is the filetype of the window underneath undotree
  --     for _, w in pairs(vim.fn.win_findbuf(ev.buf)) do
  --       local winhighlights = vim.api.nvim_get_option_value('winhighlight', { scope = 'global', win = w })
  --       vim.print(winhighlights)
  --
  --       if winhighlights == nil then
  --         winhighlights = ''
  --       end
  --
  --       -- winhighlights = winhighlights
  --       --     :gsub('Normal:%w+,', '')
  --       --     :gsub('Normal:%w+$', '')
  --       --     :gsub('FloatBorder:%w+,', '')
  --       --     :gsub('FloatBorder:%w+$', '')
  --
  --       if winhighlights == '' then
  --         winhighlights =
  --         'Normal:NormalFloat,NormalFloat:NormalFloat,FloatBorder:FloatBorder'
  --       else
  --         winhighlights = winhighlights ..
  --             ',Normal:NormalFloat,FloatBorder:FloatBorder,CursorColumn:GruvsquirrelCursorColumnFloat'
  --       end
  --       vim.api.nvim_set_option_value('winhighlight', winhighlights, { scope = 'local', win = w })
  --       vim.api.nvim_set_option_value('winhighlight', winhighlights, { scope = 'global', win = w })
  --     end
  --   end,
  -- })
end

return M
