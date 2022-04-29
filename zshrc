# aliases
alias clock='watch -n15 "date +\"%I:%M\" | figlet -k"'


# mac/linux shell settings
if [ "$(uname -a | grep Linux)" ]; then
  alias ls="ls -F --color"
  alias pbcopy='xclip -selection clipboard'
  alias pbpaste='xclip -selection clipboard -o'
else
  alias ls="ls -FG"
fi

# bash setting
export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=100000
export HISTFILESIZE=100000

# my bin
PATH=$PATH:~/bin

# prompt
setopt PROMPT_SUBST
alias python=/usr/local/bin/python3.9
source "/usr/local/opt/zsh-git-prompt/zshrc.sh"
PROMPT='%~%b$(git_super_status) > '


# local profile
if [ -f ~/.zshrc.local  ]; then
  source ~/.zshrc.local
fi
