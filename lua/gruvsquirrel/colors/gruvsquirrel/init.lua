local hackbox = require("gruvsquirrel.colors.gruvsquirrel.gruvbox")
local gitcommit = require("gruvsquirrel.colors.gruvsquirrel.gitcommit")
local diff = require("gruvsquirrel.colors.gruvsquirrel.diff")
local treesitter = require("gruvsquirrel.colors.gruvsquirrel.treesitter")
local standard = require("gruvsquirrel.colors.gruvsquirrel.standard")

local attributes = vim.tbl_extend("force", hackbox, gitcommit, diff, treesitter, standard) -- hack is a hack

return attributes
