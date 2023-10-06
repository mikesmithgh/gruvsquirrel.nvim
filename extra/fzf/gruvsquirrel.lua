vim.schedule(
  function()
    vim.print(require('gruvsquirrel.plugins.fzf-lua').fzf_colors_str())
  end
)
