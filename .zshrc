# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# GO
export GOROOT="$HOME/.go"
export PATH="$HOME/bin:$GOROOT/bin:$PATH"

# Haskell
export PATH="$HOME/.cabal/bin:$PATH"

# direnv
eval "$(direnv hook zsh)"

# kubectl
source <(kubectl completion zsh)

setopt clobber
export LC_ALL=en_US.UTF-8

# Global key for local development
export WERCKER_SERVICE_KEY=ff

# set vim as default editor
export EDITOR=vim
export VISUAL=vim

alias vimtmp='vim $(mktemp)'
