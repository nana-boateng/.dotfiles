# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
 ZSH_THEME=""

# Add wisely, as too many plugins slow down shell startup.
plugins=(extract zsh-z zsh-syntax-highlighting)

#source oh-my-zsh for all the extras
source $ZSH/oh-my-zsh.sh

if [[ -e ~/.env ]]; then
  source ~/.env
fi
# source aliases
if [[ -e ~/.aliases ]]; then
  source ~/.aliases
fi
# source extras
if [[ -e ~/.extras ]]; then
  source ~/.extras
fi

# EXPORTS
export CHROME_BIN=/usr/bin/chromium

# prompt
eval "$(starship init zsh)"

# set vim mode
bindkey -v

# GPG
export GPG_TTY=$(tty)

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/Users/nana/.bun/_bun" ] && source "/Users/nana/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Turso
export PATH="/Users/nana/.turso:$PATH"
