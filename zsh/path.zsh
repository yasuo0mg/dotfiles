export MANPATH=/opt/local/man:$MANPATH
export PATH=$PATH:/usr/local/bin/mysql
export PATH=$PATH:/opt/homebrew/bin
export PATH=/opt/local/bin:/opt/local/sbin/:$PATH
export PATH=~/.local/bin:$PATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/bin:/usr/bin:/usr/local/bin
export PATH=$PATH:$HOME/flutter/bin
export PATH=$PATH:/Users/yasuo/Library/Android/sdk/platform-tools

############
### asdf ###
############
# https://asdf-vm.com/guide/getting-started.html#_3-install-asdf

# zsh (not using oh-my-zsh) & brew
# . $HOME/.asdf/asdf.sh
# $(brew --prefix asdf)/asdf.sh
. /usr/local/opt/asdf/asdf.sh
