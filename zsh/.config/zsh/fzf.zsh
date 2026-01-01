# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS"\
" --color=bg+:#eff1f5,bg:#eff1f5,spinner:#eff1f5,hl:#df8e1d"\
" --color=fg:#4c4f69,header:#7287FD,info:#7287FD,pointer:#7287FD"\
" --color=marker:#7287FD,fg+:#7287FD,prompt:#7287FD,hl+:#df8e1d"
