# プロンプトの表示を変更する。
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats ':(%s)%b'
zstyle ':vcs_info:*' actionformats ':(%s)%b|%a'
precmd () {
  psvar=()
  LANG=en_US.UTF-8 vcs_info
  [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}

# when using hyper, the colors are overwritten
PROMPT="٩(◕‿◕｡)۶%{${fg[yellow]}%}[%~%1(v|%F{red}%1v%f|)%{${fg[yellow]}%}]%{${reset_color}%}%b "
# 自動補完
autoload -U compinit
compinit -C

## タブ補完時に大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# コマンドラインで記号の入力を許可する
setopt nonomatch

# コマンドの履歴
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups

# コマンドミスを修正
setopt correct

# cdの後にlsを実行
chpwd() { ls -lG }
