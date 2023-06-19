local c = require("gruvsquirrel.colors.gruvsquirrel") -- colors

return {
  normal = {
    a = { bg = c.rocky_6, fg = c.scrat_0, gui = 'bold' },
    b = { bg = c.scrat_2, fg = c.rocky_4 },
    c = { bg = c.scrat_1, fg = c.rocky_6 },
  },
  insert = {
    a = { bg = c.skippy_0, fg = c.scrat_0, gui = 'bold' },
    b = { bg = c.scrat_2, fg = c.rocky_4 },
    c = { bg = c.scrat_1, fg = c.rocky_6 },
  },
  visual = {
    a = { bg = c.hammy_0, fg = c.scrat_0, gui = 'bold' },
    b = { bg = c.scrat_2, fg = c.rocky_4 },
    c = { bg = c.scrat_1, fg = c.rocky_6 },
  },
  replace = {
    a = { bg = c.bucky_0, fg = c.scrat_0, gui = 'bold' },
    b = { bg = c.scrat_2, fg = c.rocky_4 },
    c = { bg = c.scrat_1, fg = c.rocky_6 },
  },
  command = {
    a = { bg = c.doreen_0, fg = c.scrat_0, gui = 'bold' },
    b = { bg = c.scrat_2, fg = c.rocky_4 },
    c = { bg = c.scrat_1, fg = c.rocky_6 },
  },
  inactive = {
    a = { bg = c.scrat_2, fg = c.rocky_4, gui = 'bold,italic' },
    b = { bg = c.scrat_2, fg = c.rocky_4, gui = 'italic' },
    c = { bg = c.scrat_1, fg = c.rocky_6, gui = 'italic' },
  },
}
