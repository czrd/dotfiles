# navigate directories
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}

bindkey -s '^o' 'lfcd\n'

# menu
if [[ -o menucomplete ]]; then 
  # Use vim keys in tab complete menu:
  bindkey -M menuselect '^h' vi-backward-char
  bindkey -M menuselect '^k' vi-up-line-or-history
  bindkey -M menuselect '^l' vi-forward-char
  bindkey -M menuselect '^j' vi-down-line-or-history
  bindkey -M menuselect '^[[Z' vi-up-line-or-history
fi

# history
bindkey '^p' up-line-or-history
bindkey '^n' down-line-or-history
bindkey -M menuselect '?' history-incremental-search-forward
bindkey -M menuselect '/' history-incremental-search-backward

# reload zshrc
bindkey -s '^x' '^usource $ZSHRC\n'
