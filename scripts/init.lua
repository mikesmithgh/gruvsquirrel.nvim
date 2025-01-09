local plugin_name = 'gruvsquirrel.nvim'
-- add temp path from scripts/mini.sh in case this is running locally
local tempdir = vim.trim(vim.fn.system([[sh -c "dirname $(mktemp -u)"]]))
local packpath = os.getenv('PACKPATH') or tempdir .. '/' .. plugin_name .. '.tmp/nvim/site'

vim.cmd('set packpath=' .. packpath)
vim.o.termguicolors = true
require('gruvsquirrel').setup()
vim.cmd([[colorscheme gruvsquirrel]])
require('gruvsquirrel.plugins.nvim-web-devicons').setup()
require('gruvsquirrel.plugins.fzf-lua').setup()
require('gruvsquirrel.plugins.incline-nvim').setup()
