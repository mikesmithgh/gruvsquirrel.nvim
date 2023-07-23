#!/bin/sh
# Run directly from github with:
# sh -c "$(curl -s https://raw.githubusercontent.com/mikesmithgh/gruvsquirrel.nvim/main/scripts/mini.sh)"
set -eu
trap 'echo "EXIT detected with exit status $?"' EXIT

# OS temp dir & script working dir
TEMPDIR=$(dirname "$(mktemp -u)")
BASEDIR=$(cd "$(dirname "$0")" ; pwd -P)

nvim_bin=${NVIM:-nvim}
plug_name=gruvsquirrel.nvim
plug_dir="${BASEDIR}/../../${plug_name}"
tmp_dir="${TEMPDIR}/${plug_name}.tmp"
tmp_rtp="${tmp_dir}/nvim/site/pack/vendor/start"
packpath="${tmp_dir}/nvim/site"

mkdir -p "$tmp_rtp"

usage() {
    echo "Usage $0"
}

download_plugin() {
    repo="https://github.com/${1}/${2}"
    folder="${tmp_rtp}/${2}"
    if [ ! -d $folder ]; then
        echo "Downloading '${repo}' into ${folder}..."
        git clone --depth 1 ${repo} ${folder}
    else
        echo "Updating '${repo}' in ${folder}..."
        git -C "${folder}" pull --rebase
    fi
}

if [ "${1:-}" = "reset" ]; then
    rm -rf ${tmp_dir}
fi

download_plugin "nvim-tree" "nvim-web-devicons"
download_plugin "ibhagwan" "fzf-lua"

# if exists, link to local folder so we can test local changes
if [ -d "${plug_dir}" ]; then
    echo "Using local plugin ${plug_name} from '${plug_dir}'"
    echo ${plug_dir} ${tmp_rtp}
    ln -fs ${plug_dir} ${tmp_rtp}
else
    download_plugin "mikesmithgh" "$plug_name"
fi

# Run neovim
HOME=${TEMPDIR} PACKPATH=${packpath} ${nvim_bin} -u ${tmp_rtp}/${plug_name}/scripts/init.lua

printf "\n\tmini.sh was copied and modified from fzf-lua, https://github.com/ibhagwan/fzf-lua\n\t%s \033[0;31m♥\033[0m fzf-lua\n\n" "$plug_name" 
