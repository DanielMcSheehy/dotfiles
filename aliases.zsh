export PATH="$PATH:$HOME/.rvm/bin"
alias c="cd ~/code"

alias cat="bat"

alias zsh="vim ~/.zshrc"
alias setting="vim  /Users/dsm/.oh-my-zsh/custom/aliases.zsh"

#Colorls: 
alias ls="ptls"
alias pwd="ptpwd"
alias mkdir="ptmkdir"

#NPM: 
alias n="npm start"

#AWS: 
export AWS_DEFAULT_REGION="us-west-2"

#AWS PROD:
# effx
alias sd="skaffold dev --trigger manual"
alias golint="go run github.com/golangci/golangci-lint/cmd/golangci-lint run -c ./.golangci.yml -E gochecknoinits -E gocyclo -E goimports -E gosec -E interfacer -E maligned -E misspell -E nakedret -E unconvert -E unparam"
alias nlint="npm run lint-fix"
alias resetData="bash deploy/k8s/minikube/run_job.sh reset-databases"
alias seedData="bash deploy/k8s/minikube/run_job.sh seed-data"
alias flushJobs="ruby deploy/k8s/minikube/scripts/flush_jobs.rb"

#Open screenshots folder: 
alias screenshots="open ~/Documents/Screenshots"

#Git: 
function co(){git checkout "$*"}
alias gohome="git checkout main && git pull"
function resetFile(){git checkout origin/main -- "$*"}
function lazygit() {
    git add .
    git commit -a -m "$1"
    git push
}

function branchDelete(){git fetch -p && for branch in `git branch -vv --no-color | grep ': gone]' | awk '{print $1}'`; do git branch -D $branch; done}
alias branchFilter="git for-each-ref --sort=-committerdate refs/heads/"
alias rebase="git rebase -s recursive -X theirs master && git push --force"
function squash(){ git reset --soft HEAD~$1 && git commit }

function getPod() {kubectl -n backeffx get pods -o=name | grep "$1" | head -n1 | sed "s/^.\{4\}//"}

function mysql() {
         pod=$(kubectl get pods -n backeffx --no-headers -o custom-columns=":metadata.name" | grep "mysql")
         kubectl exec -it ${pod} -n backeffx -- mysql --database="effx_dev" --auto-rehash; / 
         /bin/bash
}

function resetTaskmaster() {
	kubectl get pods --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}' -n effx | grep "taskmaster" | while read -r line ; do
  	  echo $(kubectl delete pod $line -n effx) 
	done
}

# reddit downloader
func redditGif() {
     python3 ~/code/redditGifDownloader/main.py $1
}
