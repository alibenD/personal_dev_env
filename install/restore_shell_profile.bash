#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2019 All rights reserved.
# @file: restore_shell_profile.bash
# @author: aliben.develop@gmail.com
# @created_date: 2019-08-15 14:04:44
# @last_modified_date: 2019-08-15 14:13:46
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
set -x
if [[ -f "$HOME/.bash_profile" ]] || [[ -L "$HOME/.bash_profile" ]]; then
  mv $HOME/.bash_profile $HOME/.bash_profile_old
fi

if [[ -f "$HOME/.zshrc" ]] || [[ -L "$HOME/.zshrc" ]]; then
  mv $HOME/.zshrc $HOME/.zshrc_old
fi

ln -s $SETTING_PATH/shell_profile $HOME/.bash_profile
ln -s $SETTING_PATH/shell_profile $HOME/.zshrc
set +x
