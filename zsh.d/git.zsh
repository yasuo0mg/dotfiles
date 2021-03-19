# git関連のエイリアス設定
alias g='git'
alias gcm='git commit -a -m'
alias delete-merged-branches="git branch --merged | grep -v '*' | xargs -I % git branch -d %"
alias gadd='git add .'
alias gip='git push origin `git rev-parse --abbrev-ref HEAD`'
alias gst='git status'
alias gdiff='git diff'

# remove file from git-history
function remove-from-history() {
    git filter-branch --index-filter `git rm -r --cached --ignore-unmatch $1` HEAD
}
