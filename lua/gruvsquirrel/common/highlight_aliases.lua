-- Generic highlight definitions allows us to change underlying definitions without worrying about variable names
local c = require("gruvsquirrel.colors.gruvsquirrel.palette") -- colors

return {

  acorn            = { bg = c.scrat_0 },
  ajwain           = { fg = c.rocky_3, bg = c.scrat_0 },
  almond           = { bg = c.scrat_1, ctermfg = 'white', }, -- ctermfg is a hack, see https://github.com/neovim/neovim/issues/9800
  amaranth         = { bg = c.scrat_5 },
  anise            = { bg = c.scrat_3, },
  basil            = { fg = c.chitter_0 },
  bay              = { fg = c.scrat_0, bg = c.sandy_0, },
  beechnut         = { reverse = true },
  black_walnut     = { bg = c.doreen_1 },
  borage           = { fg = c.scrat_0, bg = c.surly_4, },
  brazil_nut       = { fg = c.scrat_5, bg = c.doreen_2, },
  butternut        = { fg = c.rocky_1, },
  calend           = { fg = c.rocky_1, },
  calendula        = {},
  candlenut        = { fg = c.scrat_0, bg = c.bucky_0, bold = true },
  caraway          = { fg = c.rocky_0, bg = c.scrat_0, italic = true },
  cashew           = { fg = c.rocky_0, bg = c.scrat_0 },
  celery           = { fg = c.scrat_0, bg = c.doreen_7, },
  chamomile        = { fg = c.sandy_0, bg = c.scrat_1 },
  chestnut         = { reverse = true, bold = true },
  chia             = { fg = c.sandy_0, bold = true },
  chinquapin       = { fg = c.sally_0, bg = c.scrat_5 },
  chufa            = { fg = c.scrat_5, bg = c.scrat_6, },
  cilantro         = { fg = c.sally_0, bg = c.scrat_0, },
  coconut          = { fg = c.sally_0, bg = c.scrat_6, },
  cola_nut         = { fg = c.rocky_4, bg = c.scrat_0 },
  comfrey          = { bg = c.chitter_3, }, -- might need to clear fg
  coriander        = { bg = c.scrat_6, },
  cumin            = { bg = c.scrat_3, }, -- TODO: duplicate
  dandelion        = { bg = c.scrat_5 },
  dill             = { fg = c.sandy_0, bg = c.scrat_6, bold = true, },
  fennel           = { sp = c.bucky_0, undercurl = true, },
  fenugreek        = { sp = c.skippy_0, undercurl = true, },
  feverfew         = { sp = c.surly_3, undercurl = true, },
  filbert          = { fg = c.sally_0, bg = c.scrat_6, bold = true },
  flax             = { fg = c.rocky_0, bg = c.scrat_5 },
  ginkgo_nut       = { fg = c.doreen_0 },
  hazelnut         = { fg = c.bucky_0, bold = true },
  hemp             = { fg = c.scrat_6, bg = c.scrat_0 },
  hibiscus         = { fg = c.hammy_0, italic = true },
  hickory_nut      = { fg = c.rocky_0, italic = true },
  indian_nut       = { fg = c.skippy_0, },
  jackfruit_seed   = { fg = c.hammy_0, },
  kola_nut         = { fg = c.surly_2, italic = true },
  lavender         = { fg = c.surly_0, },
  lemon_balm       = { fg = c.bucky_0 },
  lemongrass       = { fg = c.sandy_0, },
  peanut           = { fg = c.sally_0, },
  macadamia_nut    = { fg = c.chitter_0, underline = true, },
  malabar_chestnut = { fg = c.sally_2, bold = true, italic = true, },
  marjoram         = { fg = c.hammy_0, bold = true, italic = true, },
  maya_nut         = { fg = c.bucky_2 },
  mustard          = { fg = c.doreen_0, italic = true },
  nasturtium       = { bold = true, },
  nigella          = { strikethrough = true, },
  oregano          = { italic = true, },
  parsley          = { underline = true, },
  pecan            = { fg = c.doreen_8 },
  pignoli          = { fg = c.sally_0, bg = c.doreen_8, },
  pili_nut         = { fg = c.doreen_2, },
  pine_nut         = { fg = c.rocky_5, },
  pistachio        = { bg = c.hammy_4, },
  poppy            = { fg = c.scrat_3, bg = c.rocky_5 },
  pumpkin          = { fg = c.scrat_3, bg = c.doreen_2 },
  quandong         = { fg = c.surly_4, },
  quinoa           = { fg = c.sally_0, bg = c.surly_4, },
-- rosemary
-- sage
-- sesame
-- sunflower
}

-- random nuts and seeds

-- acorn
-- ajwain
-- almond
-- amaranth
-- anise
-- basil
-- bay
-- beechnut
-- black_walnut
-- borage
-- brazil_nut
-- butternut
-- calend
-- calendula
-- candlenut
-- caraway
-- cashew
-- celery
-- chamomile
-- chestnut
-- chia
-- chinquapin
-- chufa
-- cilantro
-- coconut
-- cola_nut
-- comfrey
-- coriander
-- cumin
-- dandelion
-- dill
-- fennel
-- fenugreek
-- feverfew
-- filbert
-- flax
-- ginkgo_nut
-- hazelnut
-- hemp
-- hibiscus
-- hickory_nut
-- indian_nut
-- jackfruit_seed
-- kola_nut
-- lavender
-- lemon_balm
-- lemongrass
-- macadamia_nut
-- malabar_chestnut
-- marjoram
-- maya_nut
-- mustard
-- nasturtium
-- nigella
-- oregano
-- parsley
-- peanut
-- pecan
-- pignoli
-- pili_nut
-- pine_nut
-- pistachio
-- poppy
-- pumpkin
-- quandong
-- quinoa
-- rosemary
-- sage
-- sesame
-- sunflower
-- tarragon
-- thyme
-- walnut
-- water_chestnut
