# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/). Each top-level directory is a stow package — running `setup.sh` symlinks everything into `$HOME`.

## Installation

```sh
git clone git@github.com:czrd/dotfiles.git
cd dotfiles && ./setup.sh
```

`setup.sh` runs `stow -t ~ git nvim tmux zsh intellij lf wezterm lazygit sheldon`.

## Repository structure

Each directory mirrors the target path relative to `$HOME`:

| Package     | Target                                                |
| ----------- | ----------------------------------------------------- |
| `nvim/`     | `~/.config/nvim/` — Neovim config (Lua, lazy.nvim)    |
| `zsh/`      | `~/.config/zsh/`, `~/.zshrc`, `~/.profile`            |
| `tmux/`     | `~/.tmux.conf`                                        |
| `wezterm/`  | `~/.config/wezterm/wezterm.lua`                       |
| `sheldon/`  | `~/.config/sheldon/plugins.toml` — zsh plugin manager |
| `lazygit/`  | `~/.config/lazygit/`                                  |
| `lf/`       | `~/.config/lf/`                                       |
| `git/`      | `~/.gitconfig`                                        |
| `intellij/` | `~/.ideavimrc`                                        |

## Neovim architecture

Entry point: `nvim/.config/nvim/init.lua` loads four modules in order:

1. `config/general` — vim options (2-space indent, relative numbers, clipboard, etc.)
2. `config/plugins` — lazy.nvim bootstrap + all plugin declarations with inline configs
3. `config/keymap` — all keymaps; leader key is `<Space>`
4. `config/ui` — UI overrides

Individual plugin configs live in `lua/config/<plugin>.lua` and are loaded via `config = function() require "config/<name>" end` inside `plugins.lua`.

**Key plugins:** catppuccin (colorscheme), nvim-tree, telescope, lspsaga, nvim-lspconfig, mason, blink.cmp, formatter.nvim, nvim-treesitter, toggleterm (with lazygit), noice + nvim-notify, bufferline, lualine.

**LSP servers** configured in `lsp-config.lua`: bashls, clangd, docker_language_server, emmet_ls, gopls, html, ocamllsp, rust_analyzer, tailwindcss, ts_ls, zls, lua_ls.

**Formatting** (auto on save via `BufWritePost`) configured in `formatter.lua`: stylua (Lua), prettier+eslint (JS/TS/HTML/Angular), goimports+gofumpt (Go), rustfmt (Rust), ocamlformat, black+isort (Python), clang-format LLVM style (C++), zigfmt, yamlfmt, fixjson.

**Lua style**: stylua enforced via `.stylua.toml` — 120 col width, 2-space indent, double quotes.

## Zsh architecture

`.zshrc` just runs `eval "$(sheldon source)"`. All config is split across `~/.config/zsh/`:

- `alias.zsh` — `v=nvim`, `g=git`, `t=tmux`, `lg=lazygit`; eza replaces ls; bat replaces cat
- `env.zsh` — PATH additions: pyenv, cargo, coursier, volta, opam
- `prompt.zsh`, `completion.zsh`, `history.zsh`, `keybinds.zsh`, `fzf.zsh`

Sheldon loads plugins with `zsh-defer` for performance; `zsh-vi-mode` loads eagerly.

## Tmux

Prefix is `C-a`. Key bindings: `-` horizontal split, `_`/`|` vertical split, `hjkl` pane navigation, `C-h`/`C-l` window navigation, `r` reload config. Theme: Catppuccin Latte colors (`#eff1f5` bg, `#df8e1d` accent).

## WezTerm

Catppuccin Latte color scheme, JetBrains Mono font (15pt), no tab bar, Wayland enabled, maximizes on startup.
