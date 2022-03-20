export ZSH="$XDG_CONFIG_HOME/oh-my-zsh"
HISTFILE="$XDG_CACHE_HOME/.zsh_history"
ZSH_THEME="robbyrussell"
# CASE_SENSITIVE="true"
zstyle ':omz:update' mode disabled
plugins=(colored-man-pages)
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-completions/zsh-completions.plugin.zsh
source /usr/share/doc/find-the-command/ftc.zsh quiet info
source /usr/share/fzf/key-bindings.zsh
source "$XDG_CONFIG_HOME/aliasrc"
# _comp_options+=(globdots)
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
