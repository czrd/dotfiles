# czrd/dotfiles

Personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

This repository keeps each tool's configuration in a top-level Stow package.
Running the setup script creates symlinks from those packages into your home
directory.

## Managed Configurations

- Git
- Neovim
- tmux
- zsh
- IntelliJ IdeaVim
- lf
- WezTerm
- lazygit
- sheldon

## Requirements

- [GNU Stow](https://www.gnu.org/software/stow/)
- Git
- A POSIX-compatible shell

Some configurations expect their corresponding tools to be installed separately,
such as Neovim, tmux, zsh, WezTerm, lf, lazygit, and sheldon.

## Installation

Clone the repository and run the setup script:

```sh
git clone git@github.com:czrd/dotfiles.git
cd dotfiles
./setup.sh
```

The setup script runs:

```sh
stow -t ~ \
  git \
  nvim \
  tmux \
  zsh \
  intellij \
  lf \
  wezterm \
  lazygit \
  sheldon
```

## Customization

Each top-level directory is a Stow package. To link only one package, run:

```sh
stow -t ~ <package>
```

For example:

```sh
stow -t ~ nvim
```

If a target file already exists in your home directory, Stow may report a
conflict. Move or back up the existing file before running `stow` again.
