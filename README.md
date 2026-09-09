# Neovim Configuration

Linux-focused Neovim configuration built on [LazyVim](https://www.lazyvim.org/) and managed with [lazy.nvim](https://github.com/folke/lazy.nvim).

## Current Setup

- LazyVim provides the base editor configuration and default plugins.
- `lazy.nvim` is bootstrapped automatically on first launch.
- No LazyVim extras are enabled in `lazyvim.json`.
- No custom plugins are active yet. `lua/plugins/example.lua` is a disabled reference file.

## Prerequisites

- Neovim: use a recent stable release supported by LazyVim.
- Git: required to bootstrap and install plugins.
- A Nerd Font: recommended for icons and statusline glyphs.
- Build tools: install your distribution's basic compiler toolchain for plugins that compile native code.

For Debian/Ubuntu:

```sh
sudo apt install git build-essential
```

## Install Locally

Back up an existing Neovim configuration before replacing it:

```sh
mv ~/.config/nvim ~/.config/nvim.bak
```

Clone this repository to Neovim's Linux configuration path:

```sh
git clone git@github.com:kPhipps23/nvim_config.git ~/.config/nvim
```

Start Neovim. On the first launch, `lazy.nvim` and the configured plugins install automatically:

```sh
nvim
```

## Verify The Installation

Inside Neovim, run:

```vim
:checkhealth
:Lazy
```

Use `:Lazy sync` to install missing plugins and synchronize the configured plugin set. Plugin data is stored outside this repository in `~/.local/share/nvim`.

## Configuration Layout

```text
init.lua                 Entry point; loads the LazyVim bootstrap
lua/config/lazy.lua      lazy.nvim bootstrap and plugin manager settings
lua/config/options.lua   Custom Neovim options
lua/config/keymaps.lua   Custom keymaps
lua/config/autocmds.lua  Custom autocommands
lua/plugins/*.lua        Custom plugin specifications and LazyVim overrides
lazy-lock.json           Pinned plugin revisions
```

Add options, keymaps, and autocommands in their respective `lua/config/` files. Add plugin specifications or LazyVim overrides as Lua files under `lua/plugins/`; lazy.nvim imports that directory automatically.

`lua/plugins/example.lua` contains reference examples but returns an empty plugin specification, so it does not enable any of the shown plugins.

## Maintenance

Run `:Lazy update` to update installed plugins, then commit the resulting `lazy-lock.json` changes to keep the plugin versions reproducible. Use `:Lazy sync` after changing plugin specifications.
