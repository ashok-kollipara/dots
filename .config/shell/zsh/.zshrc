export ZSH="$XDG_CONFIG_HOME/shell/zsh/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

source "$XDG_CONFIG_HOME/shell/.aliases"
source "$XDG_CONFIG_HOME/shell/.functions"

# from old .bashrc to get rid of python
[[ -z $(pgrep -lx python) ]] && [[ -f $HOME/.python_history ]] && rm $HOME/.python_history 2>/dev/null
