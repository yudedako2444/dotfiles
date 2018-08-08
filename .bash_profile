#.bashrcがあれば読み込む
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

#MAMPのMySQLのパスを通す
export PATH=$PATH:/Applications/MAMP/Library/bin

#chocopyのパスを通す
export PATH=$PATH:~/Productions/chocopy

#コマンドのエイリアス
alias la='ls -la'
alias ll='ls -la'

#Vagrantコマンドのエイリアス
alias vh='vagrant halt'
alias vr='vagrant reload'
alias vs='vagrant ssh'
alias vu='vagrant up'
alias vst='vagrant status'
alias vsd='vagrant suspend'
alias vgst='vagrant global-status'
source ~/.git-completion.bash
source ~/.git-prompt.sh

#git関連
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1

#developとmaster以外マージ済みかどうか関係なく削除
alias git-branch-delete-master-develop='git branch | grep -v master | grep -v develop | xargs -I % git branch -D %'
alias git-branch-test-run-delete-master-develop='git branch | grep -v master | grep -v develop | xargs -I % echo %'

#サーチ
alias search='find ./ -type f -print | xargs grep'

#git push origin HEAD
alias gipuri='git push origin HEAD'
alias force-gipuri='git push -f origin HEAD'

#git first commit
alias gicofir='git commit -m "empty: initial commit" --allow-empty'

# `コマンド && noti`でコマンド完了後に通知する
alias noti='terminal-notifier -message "完了"'

# command prompt
# \u ユーザ名
# \h ホスト名
# \W カレントディレクトリ
# \w カレントディレクトリのパス
# \n 改行
# \d 日付
# \[ 表示させない文字列の開始
# \] 表示させない文字列の終了
# \$ $
export PS1='\[\033[1;32m\]\u\[\033[00m\]:\[\033[1;34m\]\w\[\033[1;31m\]$(__git_ps1)\[\033[00m\]\$ '

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export PATH="/usr/local/sbin:$PATH"

# adbのパスを通す
export PATH=$PATH:/Users/Katsu/Library/Android/sdk/platform-tools

# hubの設定
eval "$(hub alias -s)"
