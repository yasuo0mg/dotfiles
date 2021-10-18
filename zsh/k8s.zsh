alias k='kubectl'

complete -F __start_kubectl k

# PROMPTにcontext/namespaceを表示するための設定
if [[ -s "/usr/local/opt/kube-ps1/share/kube-ps1.sh" ]]; then
  export KUBE_PS1_CTX_COLOR='13'
  export KUBE_PS1_SYMBOL_COLOR='cyan'
  source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
fi
export PROMPT="$(kube_ps1) $PROMPT"
