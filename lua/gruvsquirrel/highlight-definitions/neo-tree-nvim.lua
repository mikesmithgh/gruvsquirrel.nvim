local g = require('gruvsquirrel.highlight-groups.neo-tree-nvim')
local mapper = require('gruvsquirrel.util.mapper')
local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      { { g.NeoTreeBufferNumber, g.NeoTreeGitConflict, g.NeoTreeGitUnstaged }, d.fg_orange0 },
      { { g.NeoTreeCursorLine }, d.__bg_dark1_ctermfg_hack },
      { { g.NeoTreeMessage }, d.fg_gray0_italic },
      {
        {
          g.NeoTreeDimText,
          g.NeoTreeFadeText1,
          g.NeoTreeDotfile,
          g.NeoTreeHiddenByName,
          g.NeoTreeIndentMarker,
          g.NeoTreeExpander,
          g.NeoTreeWindowsHidden,
          g.NeoTreeGitIgnored,
        },
        d.fg_gray0,
      },
      { { g.NeoTreeFadeText2 }, d.fg_gray2 },
      { { g.NeoTreeDirectoryName, g.NeoTreeDirectoryIcon, g.NeoTreeFileIcon }, d.fg_blue4 },
      { { g.NeoTreeFileName }, d.fg_light0 },
      { { g.NeoTreeFileNameOpened }, d.fg_dark0_bold },
      { { g.NeoTreeSymbolicLinkTarget }, d.fg_blue4 },
      { { g.NeoTreeFilterTerm }, d.fg_green0_bg_dark0_bold },
      { { g.NeoTreeRootName }, d.fg_purple0_bold },
      { { g.NeoTreeModified }, d.fg_yellow0 },
      { { g.NeoTreePreview }, d.fg_dark0_bg_yellow0 },
      { { g.NeoTreeGitAdded }, d.fg_yellow0 },
      { { g.NeoTreeGitModified }, d.fg_yellow0 },
      { { g.NeoTreeGitRenamed }, d.fg_purple0 },
      { { g.NeoTreeGitStaged }, d.fg_yellow0 },
      { { g.NeoTreeGitUntracked }, d.fg_orange0_italic },
      { { g.NeoTreeTabActive }, d._bold },
      { { g.NeoTreeTabInactive, g.NeoTreeTitleBar }, d.fg_gray1_bg_dark6 },
      { { g.NeoTreeFloatBorder }, d.fg_gray1_bg_dark0 },
      { { g.NeoTreeTabSeparatorActive }, d.fg_dark0 },
      { { g.NeoTreeTabSeparatorInactive }, d.fg_gray1_bg_dark1 },
      { { g.NeoTreeGitDeleted }, d.fg_red0 },
      { { g.NeoTreeSignColumn }, d.fg_light0 },
      { { g.NeoTreeNormal }, d.fg_light0_bg_dark6 },
      { { g.NeoTreeNormalNC }, d.fg_light0_bg_dark6 },
      { { g.NeoTreeStatusLine }, d.fg_gray6_bg_dark1 },
      { { g.NeoTreeStatusLineNC }, d.fg_gray6_bg_dark1_italic },
      { { g.NeoTreeVertSplit }, d.fg_gray1_bg_dark1 },
      { { g.NeoTreeWinSeparator }, d.fg_gray1_bg_dark1 },
      { { g.NeoTreeEndOfBuffer }, d.fg_dark1 },
      { { g.NeoTreeFloatNormal }, d.fg_light0_bg_dark0 },
      { { g.NeoTreeFloatTitle }, d.fg_dark6_bg_gray1_bold },
    })
  end,
}

return M
