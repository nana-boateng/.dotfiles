# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
ZSH_THEME="spaceship"

# Add wisely, as too many plugins slow down shell startup.
plugins=(extract zsh-z)

#source oh-my-zsh for all the extras
source $ZSH/oh-my-zsh.sh

# source aliases
if [[ -e ~/.aliases ]]; then
  source ~/.aliases
fi

# source extras
if [[ -e ~/.extras ]]; then
  source ~/.extras
fi

# CUSTOM FUNCTIONS
# edit zsh and reload shell to update changes 
editZsh() {
  vim ~/.zshrc
  source ~/.zshrc
}

# copy zsh config file to repo, commit with argument and push to github
commitZsh() {
  cd ~/.dotfiles
  git add .
  git commit -S -m $1
  git push
}

