local d = require("gruvsquirrel.common.highlight_aliases") -- highlight definitions
local g = require("gruvsquirrel.highlight-groups.nvim-web-devicons") -- groups
local mapper = require("gruvsquirrel.util.mapper")
local attributes = mapper.highlight_group_mapper {
  { { g.DevIconAi }, d.lemongrass },
  { { g.DevIconAwk }, d.thyme },
  { { g.DevIconBabelrc }, d.lemongrass },
  { { g.DevIconBash }, d.walnut },
  { { g.DevIconBashProfile }, d.walnut },
  { { g.DevIconBashrc }, d.walnut },
  { { g.DevIconBat }, d.water_chestnut },
  { { g.DevIconBinaryGLTF }, d.pine_cone },
  { { g.DevIconBmp }, d.pineapple },
  { { g.DevIconBrewfile }, d.quandong },
  { { g.DevIconC }, d.basil },
  { { g.DevIconCMake }, d.dwayne },
  { { g.DevIconCMakeLists }, d.dwayne },
  { { g.DevIconCPlusPlus }, d.maya_nut },
  { { g.DevIconClojure }, d.walnut },
  { { g.DevIconClojureC }, d.walnut },
  { { g.DevIconClojureDart }, d.indian_nut },
  { { g.DevIconClojureJS }, d.indian_nut },
  { { g.DevIconCobol }, d.scooby },
  { { g.DevIconCoffee }, d.lemongrass },
  { { g.DevIconConf }, d.dwayne },
  { { g.DevIconConfigRu }, d.quandong },
  { { g.DevIconConfiguration }, d.velma },
  { { g.DevIconCp }, d.indian_nut },
  { { g.DevIconCpp }, d.indian_nut },
  { { g.DevIconCrystal }, d.cobb },
  { { g.DevIconCs }, d.thyme },
  { { g.DevIconCsh }, d.thyme },
  { { g.DevIconCson }, d.lemongrass },
  { { g.DevIconCss }, d.basil },
  { { g.DevIconCsv }, d.walnut },
  { { g.DevIconCxx }, d.indian_nut },
  { { g.DevIconD }, d.ginkgo_nut },
  { { g.DevIconDart }, d.scooby },
  { { g.DevIconDb }, d.pepsi },
  { { g.DevIconDefault }, d.dwayne },
  { { g.DevIconDesktopEntry }, d.quandong },
  { { g.DevIconDiff }, d.thyme },
  { { g.DevIconDoc }, d.scooby },
  { { g.DevIconDockerfile }, d.thyme },
  { { g.DevIconDrools }, d.maya_nut },
  { { g.DevIconDropbox }, d.potato },
  { { g.DevIconDsStore }, d.thyme },
  { { g.DevIconDump }, d.pepsi },
  { { g.DevIconEdn }, d.indian_nut },
  { { g.DevIconEex }, d.pineapple },
  { { g.DevIconEjs }, d.lemongrass },
  { { g.DevIconElm }, d.indian_nut },
  { { g.DevIconEnv }, d.lemongrass },
  { { g.DevIconEpp }, d.jackfruit_seed },
  { { g.DevIconErb }, d.quandong },
  { { g.DevIconErl }, d.lavendar },
  { { g.DevIconEx }, d.pineapple },
  { { g.DevIconExs }, d.pineapple },
  { { g.DevIconFavicon }, d.lemongrass },
  { { g.DevIconFennel }, d.santa },
  { { g.DevIconFish }, d.thyme },
  { { g.DevIconFs }, d.indian_nut },
  { { g.DevIconFsharp }, d.indian_nut },
  { { g.DevIconFsi }, d.indian_nut },
  { { g.DevIconFsscript }, d.indian_nut },
  { { g.DevIconFsx }, d.indian_nut },
  { { g.DevIconGDScript }, d.dwayne },
  { { g.DevIconGemfile }, d.quandong },
  { { g.DevIconGemspec }, d.quandong },
  { { g.DevIconGif }, d.pineapple },
  { { g.DevIconGitAttributes }, d.thyme },
  { { g.DevIconGitCommit }, d.thyme },
  { { g.DevIconGitConfig }, d.thyme },
  { { g.DevIconGitIgnore }, d.thyme },
  { { g.DevIconGitLogo }, d.lemon_balm },
  { { g.DevIconGitModules }, d.thyme },
  { { g.DevIconGitlabCI }, d.gumbo },
  { { g.DevIconGo }, d.indian_nut },
  { { g.DevIconGodotProject }, d.dwayne },
  { { g.DevIconGraphQL }, d.lavendar },
  { { g.DevIconGruntfile }, d.bell },
  { { g.DevIconGulpfile }, d.gumbo },
  { { g.DevIconGvimrc }, d.walnut },
  { { g.DevIconH }, d.pineapple },
  { { g.DevIconHaml }, d.velma },
  { { g.DevIconHbs }, d.bell },
  { { g.DevIconHeex }, d.pineapple },
  { { g.DevIconHh }, d.pineapple },
  { { g.DevIconHpp }, d.pineapple },
  { { g.DevIconHrl }, d.lavendar },
  { { g.DevIconHs }, d.pineapple },
  { { g.DevIconHtm }, d.lemon_balm },
  { { g.DevIconHtml }, d.lemon_balm },
  { { g.DevIconHxx }, d.pineapple },
  { { g.DevIconIco }, d.lemongrass },
  { { g.DevIconImportConfiguration }, d.velma },
  { { g.DevIconIni }, d.dwayne },
  { { g.DevIconJava }, d.gumbo },
  { { g.DevIconJl }, d.pineapple },
  { { g.DevIconJpeg }, d.pineapple },
  { { g.DevIconJpg }, d.pineapple },
  { { g.DevIconJs }, d.lemongrass },
  { { g.DevIconJson }, d.lemongrass },
  { { g.DevIconJson5 }, d.lemongrass },
  { { g.DevIconJsx }, d.indian_nut },
  { { g.DevIconKotlin }, d.hippo },
  { { g.DevIconKotlinScript }, d.hippo },
  { { g.DevIconKsh }, d.thyme },
  { { g.DevIconLeex }, d.pineapple },
  { { g.DevIconLess }, d.quandong },
  { { g.DevIconLhs }, d.pineapple },
  { { g.DevIconLicense }, d.lemongrass },
  { { g.DevIconLock }, d.pepsi },
  { { g.DevIconLog }, d.peanut },
  { { g.DevIconLua }, d.indian_nut },
  { { g.DevIconLuau }, d.indian_nut },
  { { g.DevIconMakefile }, d.dwayne },
  { { g.DevIconMarkdown }, d.indian_nut },
  { { g.DevIconMaterial }, d.lavendar },
  { { g.DevIconMd }, d.peanut },
  { { g.DevIconMdx }, d.indian_nut },
  { { g.DevIconMint }, d.walnut },
  { { g.DevIconMixLock }, d.pineapple },
  { { g.DevIconMjs }, d.lemongrass },
  { { g.DevIconMl }, d.bell },
  { { g.DevIconMli }, d.bell },
  { { g.DevIconMotoko }, d.hippo },
  { { g.DevIconMustache }, d.bell },
  { { g.DevIconNPMIgnore }, d.lemon_balm },
  { { g.DevIconNPMrc }, d.lemon_balm },
  { { g.DevIconNim }, d.lemongrass },
  { { g.DevIconNix }, d.indian_nut },
  { { g.DevIconNodeModules }, d.lemon_balm },
  { { g.DevIconOPUS }, d.bell },
  { { g.DevIconOpenTypeFont }, d.velma },
  { { g.DevIconPackageJson }, d.lemon_balm },
  { { g.DevIconPackageLockJson }, d.quandong },
  { { g.DevIconPackedResource }, d.dwayne },
  { { g.DevIconPdf }, d.cow_go_moooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo },
  { { g.DevIconPhp }, d.pineapple },
  { { g.DevIconPl }, d.indian_nut },
  { { g.DevIconPm }, d.indian_nut },
  { { g.DevIconPng }, d.pineapple },
  { { g.DevIconPp }, d.jackfruit_seed },
  { { g.DevIconPpt }, d.gumbo },
  { { g.DevIconPrisma }, d.peanut },
  { { g.DevIconProcfile }, d.pineapple },
  { { g.DevIconProlog }, d.pine_cone },
  { { g.DevIconPromptPs1 }, d.thyme },
  { { g.DevIconPsb }, d.indian_nut },
  { { g.DevIconPsd }, d.indian_nut },
  { { g.DevIconPy }, d.pine_cone },
  { { g.DevIconPyc }, d.lemongrass },
  { { g.DevIconPyd }, d.lemongrass },
  { { g.DevIconPyo }, d.lemongrass },
  { { g.DevIconQuery }, d.ginkgo_nut },
  { { g.DevIconR }, d.ginkgo_nut },
  { { g.DevIconRake }, d.quandong },
  { { g.DevIconRakefile }, d.quandong },
  { { g.DevIconRb }, d.quandong },
  { { g.DevIconRlib }, d.yelp },
  { { g.DevIconRmd }, d.indian_nut },
  { { g.DevIconRproj }, d.ginkgo_nut },
  { { g.DevIconRs }, d.yelp },
  { { g.DevIconRss }, d.jackfruit_seed },
  { { g.DevIconSass }, d.maya_nut },
  { { g.DevIconScala }, d.gumbo },
  { { g.DevIconScheme }, d.cobb },
  { { g.DevIconScss }, d.maya_nut },
  { { g.DevIconSettingsJson }, d.pineapple },
  { { g.DevIconSh }, d.thyme },
  { { g.DevIconSig }, d.bell },
  { { g.DevIconSlim }, d.lemon_balm },
  { { g.DevIconSln }, d.pineapple },
  { { g.DevIconSml }, d.bell },
  { { g.DevIconSolidity }, d.indian_nut },
  { { g.DevIconSql }, d.pepsi },
  { { g.DevIconStyl }, d.bell },
  { { g.DevIconSuo }, d.walnut },
  { { g.DevIconSuo }, d.pineapple },
  { { g.DevIconSvelte }, d.walnut },
  { { g.DevIconSvg }, d.bell },
  { { g.DevIconSwift }, d.indian_nut },
  { { g.DevIconSystemVerilog }, d.lemon_balm },
  { { g.DevIconSystemVerilog }, d.pine_cone },
  { { g.DevIconTFVars }, d.hippo },
  { { g.DevIconTcl }, d.scooby },
  { { g.DevIconTerminal }, d.walnut },
  { { g.DevIconTerraform }, d.hippo },
  { { g.DevIconTex }, d.thyme },
  { { g.DevIconTextResource }, d.lemongrass },
  { { g.DevIconTextScene }, d.pineapple },
  { { g.DevIconToml }, d.dwayne },
  { { g.DevIconTor }, d.scooby },
  { { g.DevIconTs }, d.indian_nut },
  { { g.DevIconTsx }, d.indian_nut },
  { { g.DevIconTwig }, d.walnut },
  { { g.DevIconTxt }, d.walnut },
  { { g.DevIconVHDL }, d.walnut },
  { { g.DevIconVagrantfile }, d.potato },
  { { g.DevIconVerilog }, d.walnut },
  { { g.DevIconVim }, d.walnut },
  { { g.DevIconVimrc }, d.walnut },
  { { g.DevIconVue }, d.walnut },
  { { g.DevIconWebmanifest }, d.lemongrass },
  { { g.DevIconWebp }, d.pineapple },
  { { g.DevIconWebpack }, d.indian_nut },
  { { g.DevIconXcPlayground }, d.bell },
  { { g.DevIconXls }, d.ginkgo_nut },
  { { g.DevIconXml }, d.bell },
  { { g.DevIconXul }, d.bell },
  { { g.DevIconYaml }, d.dwayne },
  { { g.DevIconYml }, d.dwayne },
  { { g.DevIconZig }, d.jackfruit_seed },
  { { g.DevIconZsh }, d.walnut },
  { { g.DevIconZshenv }, d.walnut },
  { { g.DevIconZshprofile }, d.walnut },
  { { g.DevIconZshrc }, d.walnut },
  { { g.DevIconsbt }, d.gumbo },
}
return attributes
