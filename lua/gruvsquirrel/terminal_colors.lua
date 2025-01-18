local M = {
  setup = function()
    local c = require('gruvsquirrel.colors').get()

    -- dark (black)
    vim.g.terminal_color_0 = c.dark0
    vim.g.terminal_color_8 = c.gray0

    -- red
    vim.g.terminal_color_1 = c.red0
    vim.g.terminal_color_9 = c.red2

    -- green
    vim.g.terminal_color_2 = c.green0
    vim.g.terminal_color_10 = c.green8

    -- yellow
    vim.g.terminal_color_3 = c.yellow0
    vim.g.terminal_color_11 = c.orange0

    -- blue
    vim.g.terminal_color_4 = c.blue0
    vim.g.terminal_color_12 = c.blue1

    -- purple (magenta)
    vim.g.terminal_color_5 = c.purple0
    vim.g.terminal_color_13 = c.purple1

    -- blue_green (cyan)
    vim.g.terminal_color_6 = c.blue4
    vim.g.terminal_color_14 = c.blue5

    -- light (white)
    vim.g.terminal_color_7 = c.light0
    vim.g.terminal_color_15 = c.purple2
  end,
}
return M
