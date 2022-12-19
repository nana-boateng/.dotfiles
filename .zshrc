# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Set name of the theme to load --- if set to "random", it will
ZSH_THEME=""

# Add wisely, as too many plugins slow down shell startup.
plugins=(extract git F-Sy-H z)

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

eval "$(starship init zsh)"

neofetch | lolcat

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

