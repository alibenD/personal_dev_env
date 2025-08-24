#!/bin/sh
#---Generated from template 'sh' wrote by @aliben---
# @Copyright (C) 2020 All rights reserved.
# @file: install_vim.sh
# @author: aliben.develop@gmail.com
# @created_date: 2020-04-04 15:46:49
# @last_modified_date: 2025-07-19 14:22:09
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
set -x
mkdir -p $HOME/tmp
VIM_DOWNLOAD_PATH=$HOME/tmp
if [ ! -f $VIM_DOWNLOAD_PATH/vim-master.zip ]; then
  #git clone https://github.com/vim/vim.git $VIM_DOWNLOAD_PATH
  #wget https://codeload.github.com/vim/vim/zip/master
  axel -n 8 -o $VIM_DOWNLOAD_PATH/vim-master.zip https://codeload.github.com/vim/vim/zip/master
fi

cd $VIM_DOWNLOAD_PATH
unzip vim-master.zip
cd vim-master/src
./configure --with-features=huge        \
            --enable-multibyte          \
            --enable-rubyinterp=yes     \
            --enable-python3interp=yes  \
            --enable-perlinterp=yes     \
            --enable-luainterp=yes      \
            --enable-gui=gtk2           \
            --enable-cscope             \
            --with-x                    \
            --prefix=$HOME/.local
make
make install -j7
set +x
