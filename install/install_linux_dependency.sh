#!/bin/sh
#---Generated from template 'sh' wrote by @aliben---
# @Copyright (C) 2020 All rights reserved.
# @file: install_linux_dependency.sh
# @author: aliben.develop@gmail.com
# @created_date: 2020-04-04 14:40:05
# @last_modified_date: 2020-04-05 00:10:54
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
set -x
sudo apt install -y cmake \
  python \
  python-dev \
  python3 \
  python3-dev \
  libncurses5-dev \
  libpython-dev \
  libpython3-dev \
  git \
  bash-completion \
  tree \
  yasm \
  wget \
  build-essential \
  gdb \
  powerline \
  axel

set +x
