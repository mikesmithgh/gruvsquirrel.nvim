#!/bin/sh

base_dir=$(cd "$(dirname "$0")" || exit 1; pwd -P)
lua_script="$base_dir/gruvsquirrel.lua"

nvim_cmd='nvim --headless'
if [ -n "$1" ]; then
  nvim_cmd="$nvim_cmd +'lua vim.g.colors_name = \"$1\"'"
fi
nvim_cmd="$nvim_cmd -S '$lua_script' +quit 2>&1 | sed '1d'"

# example expected commands
# nvim --headless -S '/gitrepos/gruvsquirrel.nvim/extra/fzf/gruvsquirrel.lua' +quit 2>&1 | sed '1d'
# nvim --headless +'lua vim.g.colors_name = "boxsquirrel"' -S '/gitrepos/gruvsquirrel.nvim/extra/fzf/gruvsquirrel.lua' +quit 2>&1 | sed '1d'

eval "$nvim_cmd"

