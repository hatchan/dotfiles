# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

# set vim as default editor
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"
export EDITOR=vim
export VISUAL=vim
export LC_ALL=en_US.UTF-8
export TERM=xterm-256color

# dircolors
eval $(dircolors "$HOME/.dir_colors")

# GO
export GOROOT="$HOME/.go"
export PATH="$PATH:$GOROOT/bin:$HOME/go/bin"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# rust
export RUSTC_WRAPPER=$HOME/.cargo/bin/sccache cargo build

# direnv
eval "$(direnv hook zsh)"

# kubectl
source <(kubectl completion zsh)
alias k=kubectl

# Long process
zbell_ignore="man $EDITOR $PAGER ssh"
source "$HOME/.zsh_scripts/long_process.sh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
