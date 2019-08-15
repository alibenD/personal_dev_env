#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2018 All rights reserved.
# @name: hh.bash
# @author: aliben.develop@gmail.com
# @created_date: 2017-10-23 01:41:17
# @last_modified_date: 2019-08-15 08:54:37
# @brief: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`
HEAD_DEF=`echo __${1##*/}__ | tr "a-z.-" "A-Z__"`

#---Shell Command
cat << EOF
#ifndef $HEAD_DEF
#define $HEAD_DEF
/**-----------------------------------------------
  * @Copyright (C) $CREATED_YEAR All rights reserved.
  * @date: $CREATED_YEAR
  * @file: ${1##*/}
  * @version: v0.0.1
  * @author: ${DEVELOPER_EMAIL}
  * @create_date: $CREATED_TIME
  * @last_modified_date: NO_LAST_MODIFIED_DATE
  * @brief: TODO
  * @details: TODO
  *-----------------------------------------------*/

// Header include

// Declaration
#endif // $HEAD_DEF
EOF
