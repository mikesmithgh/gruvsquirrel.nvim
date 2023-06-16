-- diff is the filetype of the window underneath undotree

-- This is a workaround until the following feature is implemented:
-- https://github.com/mbbill/undotree/issues/149
local undotree_ns = vim.api.nvim_create_namespace('undotree')
vim.api.nvim_win_set_hl_ns(0, undotree_ns)

local normal_float_hl = vim.api.nvim_get_hl(0, { name = 'NormalFloat' })
vim.api.nvim_set_hl(undotree_ns, 'Normal', normal_float_hl)
