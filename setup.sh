

# homebrew 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install zsh
brew install bat
brew install rbenv



# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# vim config
cp .vimrc ~/.vimrc

cp .zshrc ~/
cp aliases.zsh ~/.oh-my-zsh/custom
cp custom-theme.zsh ~/.oh-my-zsh/custom

brew install zsh-syntax-highlighting
brew install romkatv/powerlevel10k/powerlevel10k

brew install bash 
brew install coreutils

git clone https://github.com/jszczerbinsky/ptSh
cd ptSh
make install
cd ~/code/dotfiles
rm -rf ptSh

# kubectl 
brew install kubectl 

## TODO nerd font complete example

git config --global user.name "Daniel McSheehy"
git config --global user.email "danielmcsheehy@protonmail.com"
git config --global credential.helper store
git config --global credential.helper cache
git config --global color.ui true


ssh-keygen -t rsa -C "danielmcsheehy@protonmail.com"
# paste output to https://github.com/settings/keys
pbcopy < ~/.ssh/id_rsa.pub 

