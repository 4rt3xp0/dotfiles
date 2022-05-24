[ -z "$PS1" ] && return
stty -ixon
bind 'set completion-ignore-case on'
shopt -s autocd
shopt -s cdable_vars
shopt -s cdspell
shopt -s dirspell
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/.bash_history"
PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "
[[ "$USER" == "root" ]] && PS1="\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "
source /usr/share/doc/find-the-command/ftc.bash quiet
source "${XDG_CONFIG_HOME:-$HOME/.config}/aliasrc"
