# My neovim Setup
Here's my Neovim setup for my Golang and Rust development with my WSL2 and Ubuntu 22.04, which highly improve my coding flow.

## Prerequisite

* [Golang](https://go.dev/doc/install)

* [Rust](https://www.rust-lang.org/tools/install)

* [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)

  

## Essentials Plugin

* [Packer](https://www.github.com/wbthomason/packer.nvim)
* [Mason](https://www.github.com/williamboman/mason.nvim)
* [ Mason-lspconfig ](https://www.github.com/williamboman/mason-lspconfig.nvim)

## Essentials Visual Style

* [Nerd Fonts](https://https://github.com/ryanoasis/nerd-fonts)
* [Oh-My-ZSH](https://github.com/ohmyzsh/ohmyzsh)


## Install
Make sure that you have .config folder in your $HOME directory
```
ln -s $PWD ~/.config/nvim
```

### Install with Packer first
In your Vim command line, type as below
```
:PackerInstall
```
This will install Mason installer.

Some other important Packer command
```
:PackerClean
:CheckHealth
```

### Follow up install with Mason
```
:MasonInstall rust-analyzer codelldb gopls
```
When finish we can check with 
```
:Mason
```

## Some Important Keyboard Shortcut

| Shortcut | Description |
| ------ | ------ |
| `-` | View file Explorer |
| `-` => Navigate to folder then + `a` | Crete new file without quit buffer|
| `s` => Navigate to folder then + `s` | Open file in default editor or open file explorer|
| `bd` | Quit Buffer |
| `,` + ff | Fuzzy Search, `,` is defined <mapleader> in `default.lua` |


# Massive Credit to
* [Rodrigo Santiago](https://rsdlt.github.io/posts/rust-nvim-ide-guide-walkthrough-development-debug/)
* [Percy Bolmér](https://programmingpercy.tech/blog/learn-how-to-use-neovim-as-ide/)
* The biggest chunk to : [Mario Carrion](https://www.youtube.com/@MarioCarrion) where most of my setup originated from.
