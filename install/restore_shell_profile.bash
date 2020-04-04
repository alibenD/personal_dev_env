#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2019 All rights reserved.
# @file: restore_shell_profile.bash
# @author: aliben.develop@gmail.com
# @created_date: 2019-08-15 14:04:44
# @last_modified_date: 2020-04-04 22:03:04
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
CURRENT_PATH=`pwd`
SETTING_PATH=${CURRENT_PATH%/*}
set -x
if [[ -f "$HOME/.bash_profile" ]] || [[ -L "$HOME/.bash_profile" ]]; then
  mv $HOME/.bash_profile $HOME/.bash_profile_old
fi

if [[ -f "$HOME/.zshrc" ]] || [[ -L "$HOME/.zshrc" ]]; then
  mv $HOME/.zshrc $HOME/.zshrc_old
fi

if [[ -d "$HOME/.oh-my-zsh" ]] || [[ -L "$HOME/.oh-my-zsh" ]]; then
  mv $HOME/.oh-my-zsh $HOME/.oh-my-zsh_old
fi

ln -s $SETTING_PATH/oh-my-zsh $HOME/.oh-my-zsh

ln -s $SETTING_PATH/shell_profile $HOME/.bash_profile
ln -s $SETTING_PATH/shell_profile $HOME/.zshrc
if [[ "$(uname)" = "Linux" ]]; then
  if [[ `grep -c 'source $HOME/.bash_profile' $HOME/.bashrc` -eq '0' ]]; then
    echo 'source $HOME/.bash_profile' >> $HOME/.bashrc
  fi
fi
set +x
