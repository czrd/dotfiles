export TERM=xterm-256color

[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

plug "esc/conda-zsh-completion"
plug "zsh-users/zsh-autosuggestions"
plug "hlissner/zsh-autopair"
plug "zap-zsh/supercharge"
plug "zap-zsh/vim"
plug "zap-zsh/fzf"
plug "zap-zsh/exa"
plug "zsh-users/zsh-syntax-highlighting"

plug "$HOME/.config/zsh/alias.zsh"
plug "$HOME/.config/zsh/env.zsh"
plug "$HOME/.config/zsh/history.zsh"
plug "$HOME/.config/zsh/keybinds.zsh"
plug "$HOME/.config/zsh/prompt.zsh"
plug "$HOME/.config/zsh/fzf.zsh"
