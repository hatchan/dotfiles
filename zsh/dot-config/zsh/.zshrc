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

# Customize to your needs...

export PATH="$HOME/.local/bin:$PATH"

if whence starship >& /dev/null; then
  eval "$(starship init zsh)"
fi

if whence direnv >& /dev/null; then
  eval "$(direnv hook zsh)"
fi

if [[ -s "/usr/share/fzf/key-bindings.zsh" ]]; then
  source /usr/share/fzf/key-bindings.zsh
fi

if whence zoxide >& /dev/null; then
  eval "$(zoxide init --cmd cd zsh)"
fi

alias k=kubectl
