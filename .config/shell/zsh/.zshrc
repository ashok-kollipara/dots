export ZSH="$XDG_CONFIG_HOME/shell/zsh/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

source "$XDG_CONFIG_HOME/shell/.aliases"
source "$XDG_CONFIG_HOME/shell/.functions"
