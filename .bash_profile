#.bashrcがあれば読み込む
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

alias la='ls -la'
alias ll='ls -la'

# ruby setting
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
source ~/.git-completion.bash
source ~/.git-prompt.sh

# Gitセットアップ
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1

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

# MAMPのmysqlのPATHを通す
export PATH=$PATH:/Applications/MAMP/Library/bin
