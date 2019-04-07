#Directory
alias showclix="cd /showclix"


# Git
alias gnedit="git commit --amend --no-edit"
alias ga="git add"
alias gc="git commit"
alias gd="git diff"
alias grc="git rebase --continue"
alias gra="git rebase --abort"
alias grs="git rebase --skip"
alias gb="git branch -a"
alias gch="git checkout"
alias gp+="git push"
alias gst="git status"

# Node
alias ns="npm start"
alias nt="npm run test"
alias nb="npm run build"
alias npmfix="rm -rf node_modules/ && rm -f package-lock.json && npm install"

#Vagrant
alias vs="ssh vagrant@localhost -p2222"
alias vu="sudo vagrant up"
alias vdie="sudo vagrant halt"
