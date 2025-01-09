local gruvsquirrel_colors = require('gruvsquirrel.colors')

local function script_path()
  local str = debug.getinfo(2, 'S').source:sub(2)
  return str:match('(.*/)') or ''
end

local generate = function(colorscheme, ...)
  local result = {}
  for _, line in pairs(vim.fn.readfile(script_path() .. 'template.tmTheme')) do
    local color_name = line:match('{gruvsquirrel.(.*)}')
    local color_value = '#ff0000'
    if color_name then
      local c = gruvsquirrel_colors.get(colorscheme)
      color_value = c[color_name] or color_name
      if color_value == 'colorscheme' then
        color_value = colorscheme
      end
      line = line:gsub('{gruvsquirrel.(.*)}', color_value)
    end
    table.insert(result, line)
  end
  return result
end

local generate_all = function()
  local all_colorschemes = vim.fn.getcompletion('*squirrel', 'color')
  for _, colorscheme in pairs(all_colorschemes) do
    local tm_theme = generate(colorscheme)
    local full_path = script_path() .. 'themes/' .. colorscheme .. '.tmTheme'
    vim.fn.writefile(tm_theme, full_path)
    vim.print(' ✅ generated ' .. colorscheme .. ' bat theme at ' .. full_path)
  end
  vim.print('\n')
end

vim.schedule(generate_all)
