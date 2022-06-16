#!/bin/bash
# ~/.bashrc
#

# If not running interactively, don't do anything
# ~/.bash_profile needed for login shell, can use /etc/bash.bashrc instead
# below customizations can be sourced if working on login shell
[[ $- != *i* ]] && return

# Source all the custom aliases
source $HOME/.config/shell/.aliases

# Source the ENVIRONMENT variables
source $HOME/.config/shell/.exports

rm $HOME/.bash_history 2>/dev/null

# set mode vi
# set -o vi
