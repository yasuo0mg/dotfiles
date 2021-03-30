alias gcm='git commit -m'
alias delete-merged-branches="git branch --merged | grep -v '*' | xargs -I % git branch -d %"
alias gadd='git add .'
alias gp='git push origin `git rev-parse --abbrev-ref HEAD`'
alias gst='git status'
alias gdiff='git diff'
