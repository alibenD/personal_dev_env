#!/bin/sh
#---Generated from template 'sh' wrote by @aliben---
# @Copyright (C) 2020 All rights reserved.
# @file: install_fzf.sh
# @author: aliben.develop@gmail.com
# @created_date: 2020-04-04 22:10:40
# @last_modified_date: 2020-04-05 00:10:41
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
set -x
if [[ "$(uname)" = "Linux" ]]; then
  if [[ ! -d ~/.fzf ]]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
  else
    if command -v fzf >/dev/null 2>&1; then 
      echo "Exists fzf, `which brew`"
    else
      ~/.fzf/install
    fi
  fi
else
  brew install fzf
  if command -v fzf >/dev/null 2>&1; then 
    echo "Exists fzf, `which brew`"
  else
    $(brew --prefix)/opt/fzf/install
  fi
fi
set +x
