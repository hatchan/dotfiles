# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#
# Executes commands at the start of an interactive session.
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

export TERM=xterm-256color
eval $(dircolors "$HOME/.dir_colors/dircolors")

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
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
