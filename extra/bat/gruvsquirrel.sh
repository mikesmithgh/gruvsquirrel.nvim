#!/bin/sh

base_dir=$(cd "$(dirname "$0")" || exit 1; pwd -P)
lua_script="$base_dir/gruvsquirrel.lua"

nvim --headless -S "$lua_script" +quit 2>&1 | sed '1d'
printf "\n 🦇 rebuilding bat cache ... \n\n"
bat cache --build
printf "\n 🐿️ listing bat gruvsquirrel themes ... \n\n"
bat --list-themes --color=always | grep --color=none 'squirrel' -A 6 | sed 's/--//g'

