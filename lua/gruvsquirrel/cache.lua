-- cache logic "borrowed" from https://github.com/folke/tokyonight.nvim/blob/7bb270adaa7692c2c33befc35f5567fc596a2504/lua/tokyonight/util.lua#L140
-- thanks folke!
local M = {}

local uv = vim.uv or vim.loop

local function write_file(file, contents)
  vim.fn.mkdir(vim.fn.fnamemodify(file, ':h'), 'p')
  local fd = assert(io.open(file, 'w+'))
  fd:write(contents)
  fd:close()
end

local function read_file(file)
  local fd = assert(io.open(file, 'r'))
  ---@type string
  local data = fd:read('*a')
  fd:close()
  return data
end

function M.file(key)
  return vim.fn.stdpath('cache') .. '/gruvsquirrel-' .. key .. '.json'
end

function M.read(key)
  local ok, ret = pcall(function()
    return vim.json.decode(read_file(M.file(key)))
  end)
  return ok and ret or nil
end

function M.write(key, data)
  pcall(write_file, M.file(key), vim.json.encode(data))
end

function M.clear()
  for _, style in ipairs({ 'gruvsquirrel', 'boxsquirrel' }) do
    uv.fs_unlink(M.file(style))
  end
end

return M
