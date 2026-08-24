export PATH="/usr/local/bin:$PATH"
export PATH=$PATH:/opt/homebrew/bin
export PATH=/opt/local/bin:/opt/local/sbin/:$PATH
export PATH=~/.local/bin:$PATH
export PATH=$PATH:/bin:/usr/bin:/usr/local/bin
export PATH="$PATH:$(go env GOPATH)/bin" # for protoc compilers
export PATH="$HOME/.aqua/bin:$PATH" # aqua
export PATH="$HOME/.local/share/aquaproj-aqua/bin:$PATH" # aqua

#############
### mise ###
#############
eval "$(mise activate zsh)"