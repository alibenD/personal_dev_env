#!/bin/sh
#---Generated from template 'sh' wrote by @aliben---
# @Copyright (C) 2020 All rights reserved.
# @file: install_linux_dependency.sh
# @author: aliben.develop@gmail.com
# @created_date: 2020-04-04 14:40:05
# @last_modified_date: 2023-07-15 16:11:27
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
set -x
sudo apt update
sudo apt install -y cmake \
  python2.7 \
  python2.7-dev \
  python3 \
  python3-dev \
  libncurses5-dev \
  libpython2.7-dev \
  libpython3-dev \
  git \
  bash-completion \
  tree \
  yasm \
  wget \
  build-essential \
  gdb \
  powerline \
  axel \
  zsh \
  clang \
  gcc-multilib \
  ninja-build \
  tig \
  proxychains4 \
  preload \
  libbullet-dev \
  exuberant-ctags \
  doxygen \
  doxygen-gui \
  lcov \
  net-tools \
  cmake-qt-gui \
  valgrind  \
  libx11-dev \
  dbus-x11  \
  libxtst-dev \
  ccache \
  libssl-dev \
  wireshark \
  libfuse2

set +x
