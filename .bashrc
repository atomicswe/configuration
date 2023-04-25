case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

export PATH=$PATH:/opt/nvim-linux64/bin/
export PS1='\u@\h:\[\e[32m\]\w\[\e[0m\]\$ '
export EDITOR='nvim'
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go;
export PATH=$PATH:$GOPATH/bin;
export PATH=$PATH:$HOME/.local/bin

alias lg='lazygit'

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize

force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

alias v='nvim'

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

bind 'set completion-ignore-case on'
