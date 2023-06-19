# pyenv
# https://github.com/pyenv/pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# goenv
# https://github.com/syndbg/goenv
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"

# rbenv
# https://github.com/rbenv/rbenv
eval "$(~/.rbenv/bin/rbenv init - zsh)"

# rust
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
  PATH="$HOME/.local/bin:$PATH"
fi
. "$HOME/.cargo/env"

# >>> coursier install directory >>>
export PATH="$PATH:/home/czrd/.local/share/coursier/bin"
# <<< coursier install directory <<<

# volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
