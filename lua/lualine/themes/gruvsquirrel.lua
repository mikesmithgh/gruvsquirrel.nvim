local c = require('gruvsquirrel.colors').get('gruvsquirrel')

return {
  normal = {
    a = { bg = c.gray6, fg = c.dark0, gui = 'bold' },
    b = { bg = c.dark2, fg = c.gray4 },
    c = { bg = c.dark6, fg = c.gray0 },
  },
  insert = {
    a = { bg = c.blue4, fg = c.dark0, gui = 'bold' },
    b = { bg = c.dark2, fg = c.gray4 },
    c = { bg = c.dark6, fg = c.gray0 },
  },
  visual = {
    a = { bg = c.orange0, fg = c.dark0, gui = 'bold' },
    b = { bg = c.dark2, fg = c.gray4 },
    c = { bg = c.dark6, fg = c.gray0 },
  },
  replace = {
    a = { bg = c.red0, fg = c.dark0, gui = 'bold' },
    b = { bg = c.dark2, fg = c.gray4 },
    c = { bg = c.dark6, fg = c.gray0 },
  },
  command = {
    a = { bg = c.green0, fg = c.dark0, gui = 'bold' },
    b = { bg = c.dark2, fg = c.gray4 },
    c = { bg = c.dark6, fg = c.gray0 },
  },
  inactive = {
    a = { bg = c.dark2, fg = c.gray4, gui = 'bold,italic' },
    b = { bg = c.dark2, fg = c.gray4, gui = 'italic' },
    c = { bg = c.dark6, fg = c.gray0, gui = 'italic' },
  },
}
