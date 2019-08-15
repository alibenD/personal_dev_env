#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2018 All rights reserved.
# @name: yml.bash
# @author: aliben.develop@gmail.com
# @created_date: 2018-03-09 16:50:22
# @last_modified_date: 2019-08-15 08:57:39
# @brief: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
cat << EOF
%YAML:1.0
#---Automatically Generated from template 'yml.bash' wrote by @aliben---
# @Copyright (C) $CREATED_YEAR All rights reserved.
# @file: ${1##*/}
# @author: ${DEVELOPER_EMAIL}
# @created_date: $CREATED_TIME
# @last_modified_date: NO_LAST_MODIFIED_DATE
# @brief: TODO
# @details: TODO
#---***********************************************---

#---YAML Content----
EOF
