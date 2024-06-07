export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
    git
    zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh
alias la="ls -a"
export PATH=$PATH:/home/finn/.local/bin

set -o vi

[ -s "/home/finn/.bun/_bun" ] && source "/home/finn/.bun/_bun"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

alias ytsearch="ytfzf -u umpv -T chafa"

PROMPT="$fg[cyan]%}$USER@%{$fg[blue]%}%m ${PROMPT}"

alias ssn='sudo shutdown now'


