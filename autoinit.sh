# install kitty
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
# install zsh
sudo apt install zsh
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# install zsh-z: https://github.com/agkozak/zsh-z
git clone https://github.com/agkozak/zsh-z ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-z
# install zsh-syntax-highlighting: 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# install neovim
brew install neovim

# install git
brew install git
# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
# install bitwarden
brew install --cask bitwarden
# install chromium/edgium (OPTIONAL)
brew install --cask microsoft-edge
# install nodejs/npm

# create GPG Key(s)
# Add GPG export to bash
# Create SSH Key(s)
ssh-keygen -t ed25519 -C "44186742+nana-boateng@users.noreply.github.com"

# cd && git clone git@github.com:nana-boateng/.dotfiles.git

# rm -rvf ~/.zshrc && ln -s ~/.dotfiles/.zshrc ~/.zshrc
# rm -rvf ~/.vimrc && ln -s ~/.dotfiles/.vimrc ~/.vimrc
# rm -rvf ~/.aliases && ln -s ~/.dotfiles/.aliases ~/.aliases
# rm -rvf ~/.extras && ln -s ~/.dotfiles/.extras ~/.extras
# rm -rvf ~/.config/starship.toml && ln -s ~/.dotfiles/starship.toml ~/.config/starship.toml
# rm -rvf ~/.config/kitty/kitty.conf && ln -s ~/.dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf
# rm -rvf ~/.config/kitty/colours.conf && ln -s ~/.dotfiles/kitty/colours.conf ~/.config/kitty/colours.conf
