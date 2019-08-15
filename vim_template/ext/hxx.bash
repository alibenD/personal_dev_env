#!/bin/bash
#---Automatically Generated from template 'bash' wrote by @aliben---
# 
# @name: hxx.bash
# @author: aliben.develop@gmail.com
# @created_date: 2017-10-23 01:14:10
# @last_modified_date: 2018-07-31 22:38:11
# @brief: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`
HEAD_DEF=`echo __${1##*/}__ | tr "a-z.-" "A-Z__"`
FILE_NAME=`echo ${1##*/}`

#---Shell Command
cat << EOF
#ifndef $HEAD_DEF
#define $HEAD_DEF
/**-----------------------------------------------
  * @Copyright (C) $CREATED_YEAR All rights reserved.
  * @date: $CREATED_YEAR
  * @file: ${1##*/}
  * @version: v0.0.1
  * @author: aliben.develop@gmail.com
  * @create_date: $CREATED_TIME
  * @last_modified_date: NO_LAST_MODIFIED_DATE
  * @brief: TODO
  * @details: TODO
  *-----------------------------------------------*/

// INCLUDE

// DECLARATION

#endif // $HEAD_DEF
EOF
