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
    ['fg'] = d.fg_light0.fg,
    ['preview-fg'] = d.fg_light0.fg,
    ['bg'] = d.bg_dark6.bg,
    ['preview-bg'] = d.bg_dark0.bg,
    ['hl'] = d.fg_dark0_bg_green7.bg .. ':bold:reverse',
    ['fg+'] = d.fg_gray4.fg .. ':bold',
    ['bg+'] = d.bg_dark2.bg,
    ['gutter'] = d.bg_dark6.bg,
    ['hl+'] = d.fg_dark0_bg_yellow0_bold.bg .. ':bold:reverse',
    ['query'] = d.fg_light0.fg .. ':bold',
    ['disabled'] = d.fg_gray0.fg .. ':regular',
    ['info'] = d.fg_green0.fg,
    ['border'] = d.fg_gray1.fg,
    ['separator'] = d.fg_gray1.fg,
    ['scrollbar'] = d.fg_gray1.fg,
    ['label'] = d.fg_gray1.fg .. ':reverse:bold',
    ['preview-label'] = d.fg_gray1.fg .. ':bold',
    ['prompt'] = d.fg_blue0.fg,
    ['pointer'] = d.fg_red0.fg .. ':bold',
    ['marker'] = d.fg_purple0.fg .. ':bold',
    ['spinner'] = d.fg_green0.fg .. ':bold',
    ['header'] = d.fg_gray0.fg,
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
