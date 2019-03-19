#
# Executes commands at the start of an interactive session.
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# GO
export GOROOT="$HOME/.go"
export PATH="$GOROOT/bin:$HOME/go/bin:$PATH"

# direnv
if [ $commands[direnv] ]; then
  eval "$(direnv hook zsh)"
fi

# kubectl
if [ $commands[kubectl] ]; then
  source <(kubectl completion zsh)
fi

setopt clobber
export LC_ALL=en_US.UTF-8

# set vim as default editor
export EDITOR=vim
export VISUAL=vim

alias vimtmp='export TMP_FILE=$(mktemp) && echo "Temporary file opened at $TMP_FILE" && vim $TMP_FILE'
alias clipboard='xclip -selection clipboard'

# ~/bin
export PATH="$HOME/bin:$PATH"
