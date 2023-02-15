-- This is a workaround until the following feature is implemented:
-- https://github.com/mbbill/undotree/issues/149
local undotree_ns = vim.api.nvim_create_namespace('undotree')
vim.api.nvim_win_set_hl_ns(0, undotree_ns)

-- using vim.cmd instead of nvim_set_hl due to issue
-- see https://github.com/neovim/neovim/issues/21689
vim.cmd('set winhighlight=Normal:Pmenu')
-- vim.api.nvim_set_hl(undotree_ns, 'Normal', { link = 'Pmenu', })
