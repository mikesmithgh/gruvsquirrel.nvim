local c = require('gruvsquirrel.colors').get('gruvsquirrel')

return {
  normal = {
    a = { bg = c.rocky_6, fg = c.scrat_0, gui = 'bold' },
    b = { bg = c.scrat_2, fg = c.rocky_4 },
    c = { bg = c.scrat_6, fg = c.rocky_0 },
  },
  insert = {
    a = { bg = c.skippy_0, fg = c.scrat_0, gui = 'bold' },
    b = { bg = c.scrat_2, fg = c.rocky_4 },
    c = { bg = c.scrat_6, fg = c.rocky_0 },
  },
  visual = {
    a = { bg = c.hammy_0, fg = c.scrat_0, gui = 'bold' },
    b = { bg = c.scrat_2, fg = c.rocky_4 },
    c = { bg = c.scrat_6, fg = c.rocky_0 },
  },
  replace = {
    a = { bg = c.bucky_0, fg = c.scrat_0, gui = 'bold' },
    b = { bg = c.scrat_2, fg = c.rocky_4 },
    c = { bg = c.scrat_6, fg = c.rocky_0 },
  },
  command = {
    a = { bg = c.doreen_0, fg = c.scrat_0, gui = 'bold' },
    b = { bg = c.scrat_2, fg = c.rocky_4 },
    c = { bg = c.scrat_6, fg = c.rocky_0 },
  },
  inactive = {
    a = { bg = c.scrat_2, fg = c.rocky_4, gui = 'bold,italic' },
    b = { bg = c.scrat_2, fg = c.rocky_4, gui = 'italic' },
    c = { bg = c.scrat_6, fg = c.rocky_0, gui = 'italic' },
  },
}
