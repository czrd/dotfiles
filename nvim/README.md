# nvim
My NeoVim setting files

## Requirements
- [NeoVim](https://neovim.io/)
- [GNU Stow](https://www.gnu.org/software/stow/)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [Nerd Fonts](https://www.nerdfonts.com/)

## Setup
```
git clone https://github.com/czrd/dotfiles.git
cd dotfiles
stow -t ~ nvim
```

## Screenshots
### Startup menu
![Screenshot from 2022-11-03 16-37-29](https://user-images.githubusercontent.com/49582751/199669969-b11372c3-d73d-42ec-a28e-6cffb6e7f874.png)

### Completion, file tree, code outlines
![Screenshot from 2022-11-03 16-39-47](https://user-images.githubusercontent.com/49582751/199669796-abb51767-33c9-4226-9bf4-4a750395d17f.png)

### List problems
![Screenshot from 2022-11-03 16-41-01](https://user-images.githubusercontent.com/49582751/199669667-4f67193d-96e3-40f3-b3f4-8429715ec973.png)

### Find files
![Screenshot from 2022-11-03 16-41-38](https://user-images.githubusercontent.com/49582751/199669587-d3ea59fe-79ae-409b-b541-d62f966216e5.png)

### Grep files
![Screenshot from 2022-11-03 16-41-57](https://user-images.githubusercontent.com/49582751/199669498-1842ac9b-c819-41e0-acd8-f47ec13ef711.png)

## Usage
Action | Keymap
-- | --
Toggle file tree | Ctrl-e
Toggle problems | Ctrl-t
Toggle code outlines | Shift-t
Move to left tab | Shift-h
Move to right tab | Shift-l
Find files | Ctrl-p
Grep files | Space fg
