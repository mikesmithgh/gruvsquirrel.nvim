local g = require('gruvsquirrel.highlight-groups.neo-tree-nvim')
local mapper = require('gruvsquirrel.util.mapper')
local M = {
  attributes = function()
    local d = require('gruvsquirrel.common.highlight_aliases').get()
    return mapper.highlight_group_mapper({
      { { g.NeoTreeBufferNumber, g.NeoTreeGitConflict, g.NeoTreeGitUnstaged }, d.jackfruit_seed },
      { { g.NeoTreeCursorLine }, d.almond },
      { { g.NeoTreeMessage }, d.hickory_nut },
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
        d.whesha,
      },
      { { g.NeoTreeFadeText2 }, d.nacho },
      { { g.NeoTreeDirectoryName, g.NeoTreeDirectoryIcon, g.NeoTreeFileIcon }, d.indian_nut },
      { { g.NeoTreeFileName }, d.peanut },
      { { g.NeoTreeFileNameOpened }, d.soup },
      { { g.NeoTreeSymbolicLinkTarget }, d.indian_nut },
      { { g.NeoTreeFilterTerm }, d.chill },
      { { g.NeoTreeRootName }, d.doink },
      { { g.NeoTreeModified }, d.lemongrass },
      { { g.NeoTreePreview }, d.bay },
      { { g.NeoTreeGitAdded }, d.lemongrass },
      { { g.NeoTreeGitModified }, d.lemongrass },
      { { g.NeoTreeGitRenamed }, d.lavender },
      { { g.NeoTreeGitStaged }, d.lemongrass },
      { { g.NeoTreeGitUntracked }, d.hibiscus },
      { { g.NeoTreeTabActive }, d.nasturtium },
      { { g.NeoTreeTabInactive, g.NeoTreeTitleBar }, d.doowhat },
      { { g.NeoTreeFloatBorder }, d.doowho },
      { { g.NeoTreeTabSeparatorActive }, d.cobb },
      { { g.NeoTreeTabSeparatorInactive }, d.yoohoo },
      { { g.NeoTreeGitDeleted }, d.lemon_balm },
      { { g.NeoTreeSignColumn }, d.peanut },
      { { g.NeoTreeNormal }, d.coconut },
      { { g.NeoTreeNormalNC }, d.coconut },
      { { g.NeoTreeStatusLine }, d.yoohoosl },
      { { g.NeoTreeStatusLineNC }, d.yoohooslnc },
      { { g.NeoTreeVertSplit }, d.yoohoo },
      { { g.NeoTreeWinSeparator }, d.yoohoo },
      { { g.NeoTreeEndOfBuffer }, d.onlike },
      { { g.NeoTreeFloatNormal }, d.cilantro },
      { { g.NeoTreeFloatTitle }, d.whatdoo },
    })
  end,
}

return M
