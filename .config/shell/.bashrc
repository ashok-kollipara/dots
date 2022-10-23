#!/bin/bash
# ~/.bashrc

# ~/.bash_profile needed for login shell on tty, use /etc/bash.bashrc instead
# below customizations can be sourced if working on login shell
# echo "source $HOME/.bashrc" >> /etc/profile

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source all the custom aliases
source $HOME/.config/shell/.aliases

# Source the ENVIRONMENT variables
source $HOME/.config/shell/.exports

# Source the frequently used commands as functions
source $HOME/.config/shell/.functions

# Source the custom completions 
source $HOME/.config/shell/.completions

# Declutter the unwanted files
[[ -f $HOME/.bash_history ]] && rm $HOME/.bash_history 2>/dev/null
[[ -f $HOME/.bash_logout ]] && rm $HOME/.bash_logout 2>/dev/null
[[ -z $(pgrep -lx python) ]] && [[ -f $HOME/.python_history ]] && rm $HOME/.python_history 2>/dev/null

# set mode vi
# set -o vi
