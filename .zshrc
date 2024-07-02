# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/danielmcsheehy/.oh-my-zsh"
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

plugins=(zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

# ColorLS settings
#source $(dirname $(gem which colorls))/tab_complete.sh
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#ptls
# export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme
source ~/.oh-my-zsh/custom/custom-theme.zsh
source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme
ZSH_THEME=powerlevel10k/powerlevel10k

RED="\e[91m"
GREEN="\e[92m"
YELLOW="\e[93m"
BLUE="\e[94m"
PINK="\e[95m"
printf "${BLUE}%s\n"
printf '%s\n' '  _       __     __                             ____              _      __ '
printf '%s\n' ' | |     / /__  / /________  ____ ___  ___     / __ \____ _____  (_)__  / /'
printf '%s\n' ' | | /| / / _ \/ / ___/ __ \/ __ `__ \/ _ \   / / / / __ `/ __ \/ / _ \/ / '
printf '%s\n' ' | |/ |/ /  __/ / /__/ /_/ / / / / / /  __/  / /_/ / /_/ / / / / /  __/ /  '
printf '%s\n' ' |__/|__/\___/_/\___/\____/_/ /_/ /_/\___/  /_____/\__,_/_/ /_/_/\___/_/   '
printf '%s\n'

export PATH=~/.local/bin:$PATH
#Golang: 
export GOPATH="${HOME}/go"
#export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export GO111MODULE=on


export GIT_TERMINAL_PROMPT=1
export GITHUB_USER="Daniel McSheehy"

export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

autoload -U +X bashcompinit && bashcompinit

# complete -o nospace - /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
