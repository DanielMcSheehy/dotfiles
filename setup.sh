

# homebrew 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install gh
gh auth login

# brew install zsh
brew install bat
brew install rbenv
brew install postgresql

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# vim config
cp .vimrc ~/.vimrc

cp .zshrc ~/
cp aliases.zsh ~/.oh-my-zsh/custom
cp custom-theme.zsh ~/.oh-my-zsh/custom

brew install zsh-syntax-highlighting
brew install powerlevel10k

sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting

brew install bash 
brew install coreutils

# enable mac fingerprint for sudo
sudo su root -c 'chmod +w /etc/pam.d/sudo && echo "auth       sufficient     pam_tid.so\n$(cat /etc/pam.d/sudo)" > /etc/pam.d/sudo && chmod -w /etc/pam.d/sudo'

# git clone https://github.com/jszczerbinsky/ptSh
# cd ptSh
# make install
# cd ~/code/dotfiles
# rm -rf ptSh

# Hack nerd font
# https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hack.zip

git config --global user.name "Daniel McSheehy"
git config --global user.email "danielmcsheehy@protonmail.com"
git config --global credential.helper store
git config --global credential.helper cache
git config --global color.ui true


# ssh-keygen -t rsa -C "danielmcsheehy@protonmail.com"
# # paste output to -> https://github.com/settings/keys
# pbcopy < ~/.ssh/id_rsa.pub 

