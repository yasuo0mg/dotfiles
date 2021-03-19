alias ll='ls -lG'
alias ls='ls -G'                                             # Show [/*@], Enable color
alias la='ls -alG'
alias mv='mv -i'                                             # Comfirm overwrite
alias cp='cp -i'                                             # Comfirm overwrite
alias diff='diff --strip-trailing-cr'
alias less='less -R'                                    # Color escape sequences will displayed
alias cat='bat'

### replace words under current directory
function greplace() {
    find . -name ${3:-*} | xargs sed -i "" "s/$1/$2/g"
}
