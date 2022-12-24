#!/bin/sh
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"
export PATH="$HOME/.local/bin":$PATH

export PS1='%F{yellow}$ %f'

# history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# plugins
plug "esc/conda-zsh-completion"
plug "zsh-users/zsh-autosuggestions"
plug "hlissner/zsh-autopair"
plug "zap-zsh/supercharge"
plug "zap-zsh/vim"
plug "zap-zsh/fzf"
plug "zap-zsh/exa"
plug "zsh-users/zsh-syntax-highlighting"

plug "$HOME/.config/zsh/keybinds.zsh"
plug "$HOME/.config/zsh/alias.zsh"
plug "$HOME/.config/zsh/env.zsh"
