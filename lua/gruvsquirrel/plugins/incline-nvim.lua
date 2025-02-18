local M = {}

local function field_format()
  local d = require('gruvsquirrel.common.highlight_aliases').get()
  return next(d)
      and {
        name = {
          guifg = d.fg_gray4_bg_dark1.fg,
          guibg = d.fg_gray4_bg_dark1.bg,
        },
        num = {
          guifg = d.fg_gray0.fg,
        },
        modified = {
          guifg = d.fg_orange0.fg,
        },
        blocks = {
          gui = 'bold',
          guifg = d.bg_dark0.bg,
        },
      }
    or nil
end

local opts_overrides = {}

M.setup = function(o)
  opts_overrides = type(o) == 'table' and vim.tbl_extend('force', {}, o) or {}

  local opts = { render = 'basic' }
  local fmt = field_format()
  if vim.g.colors_name and vim.g.colors_name:match('.*squirrel$') and fmt then
    opts = vim.tbl_extend('force', opts_overrides, {
      render = function(props)
        local start = vim.tbl_extend('force', { '█▓  ' }, fmt.blocks)
        local stop = vim.tbl_extend('force', { ' ▓█' }, fmt.blocks)
        local bufnum = props.buf
        local buffullname = vim.api.nvim_buf_get_name(props.buf)
        local bufname_t = vim.fn.fnamemodify(buffullname, ':t')
        local bufname = (bufname_t and bufname_t ~= '') and bufname_t or '[No Name]'

        -- optional devicon
        local devicon = { ' ' }
        local success, nvim_web_devicons = pcall(require, 'nvim-web-devicons')
        if success then
          local bufname_r = vim.fn.fnamemodify(buffullname, ':r')
          local bufname_e = vim.fn.fnamemodify(buffullname, ':e')
          local base = (bufname_r and bufname_r ~= '') and bufname_r or bufname
          local ext = (bufname_e and bufname_e ~= '') and bufname_e
            or vim.fn.fnamemodify(base, ':t')
          local ic, hl = nvim_web_devicons.get_icon(base, ext, { default = true })
          devicon = {
            ic,
            ' ',
            group = hl,
          }
        end

        -- buffer name
        local display_bufname = vim.tbl_extend('force', { bufname, ' ' }, fmt.name)

        -- modified indicator
        local modified_icon = {}
        if vim.api.nvim_get_option_value('modified', { buf = props.buf }) then
          modified_icon = vim.tbl_extend('force', { '● ' }, fmt.modified)
          display_bufname.guifg = fmt.modified.guifg
        end

        -- buffer number
        local display_bufnum = vim.tbl_extend('force', { bufnum, ' ' }, fmt.num)

        -- example: █▓   incline-nvim.lua 13  ▓█
        return {
          start,
          devicon,
          display_bufname,
          modified_icon,
          display_bufnum,
          stop,
        }
      end,
      window = {
        padding = {
          left = 0,
          right = 0,
        },
        margin = {
          horizontal = 0,
          vertical = 1,
        },
        placement = {
          horizontal = 'right',
          vertical = 'top',
        },
      },
    })
  end
  require('incline').setup(opts)
  vim.api.nvim_create_autocmd({ 'ColorschemePre' }, {
    group = vim.api.nvim_create_augroup('GruvsquirrelIncline', { clear = true }),
    callback = function()
      vim.schedule(function()
        M.setup(opts_overrides)
      end)
    end,
  })
end

return M
