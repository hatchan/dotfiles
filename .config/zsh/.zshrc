#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export PATH="$HOME/.local/bin:$PATH"

# Customize to your needs...
if whence starship >& /dev/null; then
  eval "$(starship init zsh)"
fi

if whence direnv >& /dev/null; then
  eval "$(direnv hook zsh)"
fi
