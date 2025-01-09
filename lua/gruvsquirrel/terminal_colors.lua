local M = {
  setup = function()
    local c = require('gruvsquirrel.colors').get()

    -- dark (black)
    vim.g.terminal_color_0 = c.scrat_0
    vim.g.terminal_color_8 = c.rocky_0

    -- red
    vim.g.terminal_color_1 = c.bucky_0
    vim.g.terminal_color_9 = c.bucky_2

    -- green
    vim.g.terminal_color_2 = c.doreen_0
    vim.g.terminal_color_10 = c.doreen_8

    -- yellow
    vim.g.terminal_color_3 = c.sandy_0
    vim.g.terminal_color_11 = c.hammy_0

    -- blue
    vim.g.terminal_color_4 = c.chitter_0
    vim.g.terminal_color_12 = c.chitter_1

    -- purple (magenta)
    vim.g.terminal_color_5 = c.surly_0
    vim.g.terminal_color_13 = c.surly_1

    -- blue_green (cyan)
    vim.g.terminal_color_6 = c.skippy_0
    vim.g.terminal_color_14 = c.skippy_1

    -- light (white)
    vim.g.terminal_color_7 = c.sally_0
    vim.g.terminal_color_15 = c.surly_2
  end,
}
return M
