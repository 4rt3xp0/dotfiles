# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$XDG_CONFIG_HOME/oh-my-zsh"
HISTFILE="$XDG_CACHE_HOME/.zsh_history"
ZSH_THEME="robbyrussell"
# CASE_SENSITIVE="true"
zstyle ':omz:update' mode disabled
plugins=(git colored-man-pages)

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-completions/zsh-completions.plugin.zsh
source /usr/share/doc/find-the-command/ftc.zsh quiet info
source /usr/share/fzf/key-bindings.zsh
# _comp_options+=(globdots)
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

alias ls='ls -h --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
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
alias vim='nvim'
alias py='python'
alias h='history'
alias c='cht.sh'
alias dot="/usr/bin/git --git-dir=$HOME/.dot/ --work-tree=$HOME"
