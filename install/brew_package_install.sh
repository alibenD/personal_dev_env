#!/bin/sh
#---Generated from template 'sh' wrote by @aliben---
# @Copyright (C) 2020 All rights reserved.
# @file: brew_package_install.sh
# @author: aliben.develop@gmail.com
# @created_date: 2020-04-04 16:06:39
# @last_modified_date: 2020-06-07 17:59:35
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
set -x
#brew install vim --with-python --with-ruby --with-perl --with-features=huge --with-lua
brew install cmake \
  wget \
  vim \
  axel \
  fzf

brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font
set +x
