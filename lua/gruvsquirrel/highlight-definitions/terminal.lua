local M = {
  attributes = function()
    local c = require('gruvsquirrel.colors').get()

    -- dark (black)
    vim.g.terminal_color_0 = c.scrat_0
    vim.g.terminal_color_8 = c.rocky_0

    -- red
    vim.g.terminal_color_1 = c.bucky_0
    vim.g.terminal_color_9 = c.bucky_2

    -- green
    vim.g.terminal_color_2 = c.doreen_0
    vim.g.terminal_color10 = c.doreen_8

    -- yellow
    vim.g.terminal_color_3 = c.sandy_0
    vim.g.terminal_color11 = c.hammy_0

    -- blue
    vim.g.terminal_color_4 = c.chitter_0
    vim.g.terminal_color12 = c.chitter_1

    -- purple (magenta)
    vim.g.terminal_color_5 = c.surly_0
    vim.g.terminal_color13 = c.surly_1

    -- blue_green (cyan)
    vim.g.terminal_color_6 = c.skippy_0
    vim.g.terminal_color14 = c.skippy_1

    -- light (white)
    vim.g.terminal_color_7 = c.sally_0
    vim.g.terminal_color15 = c.surly_2

    -- no need to return anything this is not a typical highlight definition, we are setting global options
    return {}
  end,
}
return M
