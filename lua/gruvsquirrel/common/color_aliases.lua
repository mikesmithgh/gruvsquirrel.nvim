local Set = require("gruvsquirrel.util.set").Set
local base_aliases = {
  'andie', -- https://the-nut-job.fandom.com/wiki/Andie
  'benny', -- https://disney.fandom.com/wiki/Benny_(The_Wild)
  'bucky', -- https://disney.fandom.com/wiki/Bucky_the_Squirrel
  'chitter', -- https://smurfs.fandom.com/wiki/Chitter
  'conker', -- https://donkeykong.fandom.com/wiki/Conker_the_Squirrel
  'doreen', -- https://marvel.fandom.com/wiki/Doreen_Green_(Earth-616)
  'hammy', -- https://dreamworks.fandom.com/wiki/Hammy
  'jojo', -- https://theswanprincess.fandom.com/wiki/Jojo
  'rocky', -- https://rockyandbullwinkle.fandom.com/wiki/Rocky_J._Squirrel
  'sally', -- https://pete-the-cat-web-series.fandom.com/wiki/Sally_Squirrel
  'sandy', -- https://spongebob.fandom.com/wiki/Sandy_Cheeks
  'scrat', -- https://iceage.fandom.com/wiki/Scrat
  'skippy', -- https://animaniacs.fandom.com/wiki/Skippy_Squirrel
  'slappy', -- https://animaniacs.fandom.com/wiki/Slappy_Squirrel
  'surly', -- https://the-nut-job.fandom.com/wiki/Surly
}

local color_aliases = {}
for _, v in pairs(base_aliases) do
  for i = 0, 9 do
    table.insert(color_aliases, (string.format("%s_%s", v, i)))
  end
end

return Set(vim.tbl_extend("force", base_aliases, color_aliases))
