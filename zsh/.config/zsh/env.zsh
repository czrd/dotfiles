export TERM=xterm-256color

# pyenv
# https://github.com/pyenv/pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# rust
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
  PATH="$HOME/.local/bin:$PATH"
fi

# >>> coursier install directory >>>
export PATH="$PATH:/home/czrd/.local/share/coursier/bin"
# <<< coursier install directory <<<

# volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# Load Angular CLI autocompletion.
command -v ng &> /dev/null && source <(ng completion script)

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/home/czrd/.opam/opam-init/init.zsh' ]] || source '/home/czrd/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration
