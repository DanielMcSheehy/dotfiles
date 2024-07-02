export PATH="$PATH:$HOME/.rvm/bin"
alias c="cd ~/code"

alias cat="bat"

alias zsh="vim ~/.zshrc"
alias setting="vim  ~/.oh-my-zsh/custom/aliases.zsh"

#Colorls: 
# alias ls="ptls"
# alias pwd="ptpwd"
# alias mkdir="ptmkdir"

#NPM: 
alias n="npm start"

#AWS: 
export AWS_DEFAULT_REGION="us-west-2"



#Open screenshots folder: 
alias screenshots="open ~/Documents/Screenshots"

#Git: 
function co(){git checkout "$*"}
alias gohome="git checkout main && git pull"
function resetFile(){git checkout origin/develop -- "$*"}
function lazygit() {
    git add .
    git commit -a -m "$1"
    git push
}

function branchDelete(){git fetch -p && for branch in `git branch -vv --no-color | grep ': gone]' | awk '{print $1}'`; do git branch -D $branch; done}
alias branchFilter="git for-each-ref --sort=-committerdate refs/heads/"
alias rebase="git rebase -s recursive -X theirs master && git push --force"
function squash(){ git reset --soft HEAD~$1 && git commit }

function adminPostgres(){PGPASSWORD='admin' psql -h localhost -U formant admin}


# reddit downloader
func redditGif() {
     python3 ~/code/redditGifDownloader/main.py $1
}
