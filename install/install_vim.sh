#!/bin/sh
#---Generated from template 'sh' wrote by @aliben---
# @Copyright (C) 2020 All rights reserved.
# @file: install_vim.sh
# @author: aliben.develop@gmail.com
# @created_date: 2020-04-04 15:46:49
# @last_modified_date: 2020-04-04 21:30:18
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
mkdir -p $HOME/tmp
VIM_DOWNLOAD_PATH=$HOME/tmp/vim
if [ ! -d $VIM_DOWNLOAD_PATH ]; then
  #git clone https://github.com/vim/vim.git $VIM_DOWNLOAD_PATH
  #wget https://codeload.github.com/vim/vim/zip/master
  axel -n 8 -o $VIM_DOWNLOAD_PATH https://codeload.github.com/vim/vim/zip/master
fi
cd $VIM_DOWNLOAD_PATH
unzip vim-master.zip
cd vim-master
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-pythoninterp=yes \
            --with-python-config-dir=`ls /usr/lib/python2.7 | grep config-` \ # pay attention here check directory correct
            --enable-python3interp=yes \
            --with-python3-config-dir=/usr/lib/python3.5/config \
            --with-python3-command=`which python3` \ 
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=$HOME/dev/env

make install -j7
