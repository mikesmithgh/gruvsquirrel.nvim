#!/bin/sh
# usage: fzf --color $(fzf/gruvsquirrel.sh)
theme=''
theme="$theme "'fg:#c7c7c7'                 # sally_0
theme="$theme,"'preview-fg:#c7c7c7'         # sally_0
theme="$theme,"'bg:#1a1a1a'                 # scrat_6
theme="$theme,"'preview-bg:#1a1a1a'         # scrat_6
theme="$theme,"'hl:#a9d5c4:bold:reverse'    # doreen_7
theme="$theme,"'fg+:#a0a0a0:bold'           #
theme="$theme,"'bg+:#32302f'                # scrat_2
theme="$theme,"'gutter:#1a1a1a'             # scrat_6
theme="$theme,"'hl+:#dbbc5f:bold:reverse'   # sandy_0
theme="$theme,"'query:#c7c7c7:bold'         # sally_0
theme="$theme,"'disabled:#968c81:regular'   #
theme="$theme,"'info:#8faa80'               # doreen_0
theme="$theme,"'border:#504945'             # rocky_1
theme="$theme,"'separator:#504945'          # rocky_1
theme="$theme,"'scrollbar:#504945'          # rocky_1
theme="$theme,"'label:#504945:reverse:bold' # rocky_1
theme="$theme,"'preview-label:#504945:bold' # rocky_1
theme="$theme,"'prompt:#83a598'             # skippy_0
theme="$theme,"'pointer:#ff6961:bold'       # bucky_0
theme="$theme,"'marker:#d3869b:bold'        # bucky_0
theme="$theme,"'spinner:#8faa80:bold'       # doreen_0
theme="$theme,"'header:#968c81'             # rocky_0

# shellcheck disable=SC2086
printf "%s" $theme
