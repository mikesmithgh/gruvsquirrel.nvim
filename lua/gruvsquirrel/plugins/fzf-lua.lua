local string_util = require('gruvsquirrel.util.string')
local M = {}

M.fzf_colors = function(...)
  local d = require('gruvsquirrel.common.highlight_aliases').get(...)
  local colors = {
    ['fg'] = 'regular',
    ['preview-fg'] = 'regular',
    ['bg'] = 'regular',
    ['preview-bg'] = 'regular',
    ['hl'] = 'regular',
    ['fg+'] = 'regular',
    ['bg+'] = 'regular',
    ['gutter'] = 'regular',
    ['hl+'] = 'regular',
    ['query'] = 'regular',
    ['disabled'] = 'regular',
    ['info'] = 'regular',
    ['border'] = 'regular',
    ['separator'] = 'regular',
    ['scrollbar'] = 'regular',
    ['label'] = 'regular',
    ['preview-label'] = 'regular',
    ['prompt'] = 'regular',
    ['pointer'] = 'regular',
    ['marker'] = 'regular',
    ['spinner'] = 'regular',
    ['header'] = 'regular',
  }
  if next(d) == nil then
    return colors
  end
  colors = {
    ['fg'] = d.peanut.fg,
    ['preview-fg'] = d.peanut.fg,
    ['bg'] = d.coriander.bg,
    ['preview-bg'] = d.acorn.bg,
    ['hl'] = d.celery.bg .. ':bold:reverse',
    ['fg+'] = d.pepsi.fg .. ':bold',
    ['bg+'] = d.ace.bg,
    ['gutter'] = d.coriander.bg,
    ['hl+'] = d.salted_bay.bg .. ':bold:reverse',
    ['query'] = d.peanut.fg .. ':bold',
    ['disabled'] = d.whesha.fg .. ':regular',
    ['info'] = d.ginkgo_nut.fg,
    ['border'] = d.calend.fg,
    ['separator'] = d.calend.fg,
    ['scrollbar'] = d.calend.fg,
    ['label'] = d.calend.fg .. ':reverse:bold',
    ['preview-label'] = d.calend.fg .. ':bold',
    ['prompt'] = d.basil.fg,
    ['pointer'] = d.lemon_balm.fg .. ':bold',
    ['marker'] = d.lavender.fg .. ':bold',
    ['spinner'] = d.ginkgo_nut.fg .. ':bold',
    ['header'] = d.whesha.fg,
  }
  return colors
end

M.fzf_colors_str = function(...)
  local fzf_colors = M.fzf_colors(...)
  if type(fzf_colors) == 'string' then
    return 'bg:red'
  end
  local fzf_colors_str = ''
  for k, v in pairs(fzf_colors) do
    fzf_colors_str = fzf_colors_str .. k .. ':' .. v .. ','
  end
  return fzf_colors_str:sub(1, -2) -- remove last trailing comma
end

-- wrapper method for fzf-lua
-- set highlight overrides but allow user continue providing overrides
M.setup = function(o)
  require('gruvsquirrel.autocmd').enable_autocmd_fzflua_defaults()
  local opts = type(o) == 'table' and vim.tbl_deep_extend('force', {}, o) or {}
  if string_util.endswith(vim.g.colors_name, 'squirrel') then
    opts.fzf_colors = function()
      -- wrap in function to avoid passing arguments
      return M.fzf_colors()
    end
  end
  opts.previewers = opts.previewers or {}
  opts.previewers.bat = {
    new = function(preview_opts, ...)
      if string_util.endswith(vim.g.colors_name, 'squirrel') then
        preview_opts.theme = vim.g.colors_name
      end
      return require('fzf-lua.previewer.fzf').bat:new(preview_opts, ...)
    end,
  }
  opts.previewers.bat_async = {
    new = function(preview_opts, ...)
      if string_util.endswith(vim.g.colors_name, 'squirrel') then
        preview_opts.theme = vim.g.colors_name
      end
      return require('fzf-lua.previewer.fzf').bat_async:new(preview_opts, ...)
    end,
  }
  require('fzf-lua').setup(opts)
end

return M
