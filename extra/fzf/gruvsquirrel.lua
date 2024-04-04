vim.opt.eventignore:append('all')
vim.schedule(function()
  vim.print(require('gruvsquirrel.plugins.fzf-lua').fzf_colors_str())
end)
