#!/bin/sh
#---Generated from template 'sh' wrote by @aliben---
# @Copyright (C) 2020 All rights reserved.
# @file: install_fzf.sh
# @author: aliben.develop@gmail.com
# @created_date: 2020-04-04 22:10:40
# @last_modified_date: 2020-04-04 22:13:11
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
if [[ "$(uname)" = "Linux" ]]; then
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install
else
  brew install fzf
  $(brew --prefix)/opt/fzf/install
fi
