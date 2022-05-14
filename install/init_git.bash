#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2022 All rights reserved.
# @file: init_git.bash
# @author: aliben.develop@gmail.com
# @created_date: 2022-05-14 22:15:15
# @last_modified_date: 2022-05-14 22:19:32
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
git config --global user.name ${DEVELOPER_NAME}
git config --global user.email ${DEVELOPER_EMAIL}
git config --global core.editor vim
git config --global diff.tool vimdiff
git config --global color.ui auto
git config --global commit.template `pwd`/../git_config/git_commit_message
