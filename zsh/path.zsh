export PATH="/usr/local/bin:$PATH"
export PATH=$PATH:/opt/homebrew/bin
export PATH=/opt/local/bin:/opt/local/sbin/:$PATH
export PATH=~/.local/bin:$PATH
export PATH=$PATH:/bin:/usr/bin:/usr/local/bin
export PATH="$PATH:$(go env GOPATH)/bin" # for protoc compilers

############
### asdf ###
############
# https://asdf-vm.com/guide/getting-started.html#_3-install-asdf

. ~/.asdf/plugins/golang/set-env.zsh

# homebrew & zsh
# echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc
. /opt/homebrew/opt/asdf/libexec/asdf.sh

export ASDF_GOLANG_MOD_VERSION_ENABLED=false
