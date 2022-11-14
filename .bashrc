alias v='nvim'
alias ls='ls --color'
export PS1='\u@\h:\[\e[33m\]\w\[\e[0m\]\$ '
export EDITOR='nvim'
export TERM=xterm-256color

export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go;
export PATH=$PATH:$GOPATH/bin;
export PATH=$PATH:$HOME/Documents/hacking-tools/JohnTheRipper/run
export PATH=$PATH:$HOME/.local/bin

alias john="~/Documents/hacking-tools/JohnTheRipper/run/john"

bind 'set completion-ignore-case on'
