#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2019 All rights reserved.
# @file: init.bash
# @author: aliben.develop@gmail.com
# @created_date: 2019-08-15 14:01:19
# @last_modified_date: 2020-03-27 00:14:46
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
source restore_shell_profile.bash
source ~/.bash_profile
../vim/auto_install.sh
../fonts/install.sh
