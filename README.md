<img src="https://user-images.githubusercontent.com/10135646/210930853-fc6e828a-d3fe-4a1c-83af-c24ec592b80b.png" alt="gruvsquirrel" align="right" width="50px" />

# 🐿️ gruvsquirrel.nvim
Neovim colorscheme written in Lua inspired by [gruvbox](https://github.com/morhetz/gruvbox)

<!-- panvimdoc-ignore-start -->

[![neovim: v0.9+](https://img.shields.io/static/v1?style=flat-square&label=neovim&message=v0.9%2b&logo=neovim&labelColor=282828&logoColor=8faa80&color=414b32)](https://neovim.io/)
[![semantic-release: angular](https://img.shields.io/static/v1?style=flat-square&label=semantic-release&message=angular&logo=semantic-release&labelColor=282828&logoColor=d8869b&color=8f3f71)](https://github.com/semantic-release/semantic-release)

<!-- panvimdoc-ignore-end -->

> [!WARNING]\
> This project is still a work in progress and not considered stable

<!-- panvimdoc-ignore-start -->

## 🪩 Gruvsquirrel
![main](https://raw.githubusercontent.com/wiki/mikesmithgh/gruvsquirrel.nvim/images/main.png)

<!-- panvimdoc-ignore-end -->

## 🏃 Quickstart

To quickly test this plugin without changing your configuration run the command:
```sh
sh -c "$(curl -s https://raw.githubusercontent.com/mikesmithgh/gruvsquirrel.nvim/main/scripts/mini.sh)"
```

> [!NOTE]\
> It is good practice to first
> [read the script](https://github.com/mikesmithgh/gruvsquirrel.nvim/blob/main/scripts/mini.sh)
> before running `sh -c` directly from the web

## 📦 Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  'mikesmithgh/gruvsquirrel.nvim',
  lazy = false,
  priority = 1000,
  opts = {},
}
```

## 🚀 Usage

```lua
vim.cmd.colorscheme('gruvsquirrel')
```

```vim
colorscheme gruvsquirrel

" There are also colorschemes for the different styles.
colorscheme boxsquirrel
```


## 🤝 Ackowledgements
- [gruvbox](https://github.com/morhetz/gruvbox) 
    > Designed as a bright theme with pastel 'retro groove' colors and light/dark mode switching in the way of solarized. The main focus when developing gruvbox is to keep colors easily distinguishable, contrast enough and still pleasant for the eyes.
- [gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim) 
    > A port of gruvbox community theme to lua with treesitter support!
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
    > A dark and light Neovim theme written in Lua ported from the Visual Studio Code TokyoNight theme. Includes extra themes for Kitty, Alacritty, iTerm and Fish.
- [fzf-lua](https://github.com/ibhagwan/fzf-lua)
    > This is my take on the original fzf.vim, written in lua for neovim 0.5, it builds on the elegant nvim-fzf as an async interface to create a performant and lightweight fzf client for neovim that rivals any of the new shiny fuzzy finders for neovim.
- [gruvbox-material](https://github.com/sainnhe/gruvbox-material)
    > Gruvbox Material is a modified version of Gruvbox, the contrast is adjusted to be softer in order to protect developers' eyes.
- [vim-gruvbox8](https://github.com/lifepillar/vim-gruvbox8)
    > This is a simplified and optimized* version of Gruvbox that I have developed to address some issues I had with the official color scheme.
- [gruvbox-flat.nvim](https://github.com/eddyekofo94/gruvbox-flat.nvim)
    > A dark beautiful Neovim theme written in Lua. 
- [rose-pine/neovim](https://github.com/rose-pine/neovim)
    > All natural pine, faux fur and a bit of soho vibes for the classy minimalist
- [vim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
    > A high-performance color highlighter for Neovim which has no external dependencies! Written in performant Luajit.
- [colortils.nvim](https://github.com/nvim-colortils/colortils.nvim)
    > Neovim color utils
- [vim-colortemplate](https://github.com/lifepillar/vim-colortemplate)
    > Colortemplate is a 100% VimScript plugin for Vim 8 or later, which makes it easy to develop color schemes. Its ambitious goal is to become the way to create new color schemes for Vim!
 
<!-- panvimdoc-ignore-start -->

#
<div align="center">
    <img src="https://raw.githubusercontent.com/wiki/mikesmithgh/gruvsquirrel.nvim/images/gruvplans.png" alt="gruvplans" />
</div>

<!-- panvimdoc-ignore-end -->
