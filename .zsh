# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# GO
export GOROOT="$HOME/.go"
export PATH="$HOME/bin:$GOROOT/bin:$PATH"

# Haskell
export PATH="$HOME/.cabal/bin:/opt/cabal/1.20/bin:/opt/ghc/7.10.3/bin:$PATH"

eval "$(direnv hook zsh)"

source <(kubectl completion zsh)

setopt clobber
export LC_ALL=en_US.UTF-8

export EDITOR=vim

# Global key for local development
export WERCKER_SERVICE_KEY=ff
