# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

source ~/.env


# Set name of the theme to load --- if set to "random", it will
ZSH_THEME="spaceship"

# Spaceship options
SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  exec_time     # Execution time
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  node          # Node.js section
  docker        # Docker section
  aws           # Amazon Web Services section
  venv          # virtualenv section
  pyenv         # Pyenv section
  kubectl       # Kubectl context section
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
# prompt options
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false

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

# run react client
run-client() {
  if [[ -e ./yarn.lock ]]; then
    yarn start
  fi
  
  if [[ -e ./package-lock.json ]]; then
    npm run start
  fi
}


# run react server
run-server() {
  if [[ -e ./yarn.lock ]]; then
    clear && yarn run mon
  fi
  
  if [[ -e ./package-lock.json ]]; then
    clear && npm run mon
  fi
}
