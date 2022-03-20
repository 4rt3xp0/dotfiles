[ -z "$PS1" ] && return
stty -ixon
bind 'set completion-ignore-case on'
shopt -s autocd
shopt -s cdable_vars
shopt -s cdspell
shopt -s dirspell
HISTFILE="$XDG_CACHE_HOME/.bash_history"
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
source /usr/share/doc/find-the-command/ftc.bash quiet

alias ls='ls -h --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias ln='ln -i'
alias df='df -h'
alias du='du -h'
alias free='free -h'
alias md='mkdir -p'
alias rd='rmdir'
mcd(){
	mkdir -p "$1"
	cd "$1"
}
alias ll='ls -Al'
alias la='ls -A'
alias l='ls -l'
alias s='sudo '
alias p='pacman'
alias sp='sudo pacman'
alias sv='systemctl'
alias vi='nvim'
alias py='python'
alias h='history'
alias c='cht.sh'
alias dot="/usr/bin/git --git-dir=$HOME/.dot/ --work-tree=$HOME"
