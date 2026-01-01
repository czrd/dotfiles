alias v=nvim
alias g=git
alias t=tmux
alias lg=lazygit

# bat-cat
if command -v bat &> /dev/null; then
  alias cat="bat --theme \"GitHub\""
  alias catt="bat --theme \"GitHub\""
fi

# eza
alias ls='eza --group-directories-first --icons=auto'
alias ll='ls -lh --git'
alias la='ll -a'
alias tree='ll --tree --level=2'
