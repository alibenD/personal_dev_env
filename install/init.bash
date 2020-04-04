#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2019 All rights reserved.
# @file: init.bash
# @author: aliben.develop@gmail.com
# @created_date: 2019-08-15 14:01:19
# @last_modified_date: 2020-04-04 19:21:28
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
if [[ $ALIBEN_DEV_ENV ]]; then
  echo "Already installed personal_dev_env"
  exit 0;
fi

if [[ "$(uname)" = "Linux" ]]; then
  echo "Linux system, default using apt to manage package"
  echo "Install dependency"
  /bin/bash install_linux_dependency.sh
  /bin/bash install_zsh_plugin.sh
  /bin/bash install_vim.sh
else
  if command -v brew >/dev/null 2>&1; then 
    echo "Exists brew, `which brew`"
  else 
    echo "No exists brew, installing brew at $HOME/dev/env"
    /bin/bash brew_install.sh
    sudo chown -R `echo $USER` $HOME/dev
    /bin/bash brew_package_install.sh
  fi
fi

source restore_shell_profile.bash
source ~/.bash_profile
cd ../vim/ && ./auto_install.sh
cd ../fonts && ./install.sh
