#!/bin/sh
#---Generated from template 'sh' wrote by @aliben---
# @Copyright (C) 2020 All rights reserved.
# @file: install_linux_dependency.sh
# @author: aliben.develop@gmail.com
# @created_date: 2020-04-04 14:40:05
# @last_modified_date: 2020-04-04 14:56:15
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
sudo apt install -y cmake \
  python \
  python3 \
  libpython-dev \
  libpython3-dev \
  git \
  bash-completion \
  tree \
  yasm \
  wget \
  build-essential \
  gdb 

