-- Generic highlight definitions allows us to change underlying definitions without worrying about variable names
local c = require("gruvsquirrel.colors.gruvsquirrel") -- colors

return {

  acorn            = { bg = c.scrat_0 },
  ajwain           = { fg = c.rocky_3, bg = c.scrat_0 },
  almond           = { bg = c.scrat_1, ctermfg = 'white', }, -- ctermfg is a hack, see https://github.com/neovim/neovim/issues/9800
  amaranth         = { bg = c.scrat_5 },
  anise            = { bg = c.scrat_3, },

  basil            = { fg = c.chitter_0 },
  sesame           = { sp = c.chitter_0, underline = true, },

  bay              = { fg = c.scrat_0, bg = c.sandy_0, },
  beechnut         = { reverse = true },
  black_walnut     = { bg = c.doreen_1 },
  borage           = { fg = c.scrat_0, bg = c.surly_4, },
  brazil_nut       = { fg = c.scrat_5, bg = c.doreen_2, },
  butternut        = { fg = c.rocky_1, },
  calend           = { fg = c.rocky_1, }, -- TODO: duplicate
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
  tarragon         = { sp = c.doreen_0, underline = true, },

  hazelnut         = { fg = c.bucky_0, bold = true },
  hemp             = { fg = c.scrat_6, bg = c.scrat_0 },
  hibiscus         = { fg = c.hammy_0, italic = true },
  hickory_nut      = { fg = c.rocky_0, italic = true },

  indian_nut       = { fg = c.skippy_0, },
  sage             = { sp = c.skippy_0, underline = true, },

  jackfruit_seed   = { fg = c.hammy_0, },
  kola_nut         = { fg = c.surly_2, italic = true },
  lavender         = { fg = c.surly_0, },

  lemon_balm       = { fg = c.bucky_0 },
  rosemary         = { sp = c.bucky_0, underline = true, },

  lemongrass       = { fg = c.sandy_0, },
  sunflower         = { sp = c.sandy_0, underline = true, },

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
  thyme            = { fg = c.doreen_1 },
  walnut           = { fg = c.doreen_3 },
  water_chestnut   = { fg = c.doreen_5 },

  pine_cone        = { fg = c.hammy_1, },
  pineapple        = { fg = c.surly_1, },
  velma            = { fg = c.sally_1, },
  dwayne           = { fg = c.rocky_6, },
  scooby           = { fg = c.chitter_2 },
  cobb             = { fg = c.scrat_0 },
  pepsi            = { fg = c.rocky_4 },
  potato           = { fg = c.chitter_1 },
  gumbo            = { fg = c.bucky_1 },
  bell             = { fg = c.hammy_3, },
  santa            = { fg = c.sally_2, },
  hippo            = { fg = c.surly_3, },
  yelp             = { fg = c.hammy_5, },
  cow_go_moooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo = { fg = c.bucky_3 },

  chipotle         = { fg = c.doreen_0, bold = true, },
  mcdonalds        = { bg = c.skippy_0, },
  veggie           = { fp = c.skippy_0, bold = true, },
  doink            = { fg = c.surly_0, bold = true, },
  nacho            = { fg = c.rocky_2, },

  dorito           = { fg = c.chitter_0, bold = true, },
  soup             = { fg = c.scrat_0, bold = true, },
  meow             = { fg = c.scrat_0, bold = true, underline = true },
}

