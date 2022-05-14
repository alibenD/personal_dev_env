#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2022 All rights reserved.
# @file: project_config.cmake.in.bash
# @author: aliben.develop@gmail.com
# @created_date: 2022-05-14 11:55:21
# @last_modified_date: 2022-05-14 14:24:02
# @brief: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
cat << EOF
#---Automatically Generated from template 'option.cmake' wrote by ${DEVELOPER_NAME}---
#
# @Copyright (C) $CREATED_YEAR All rights reserved.
# @filename: ${1##*/}
# @author: ${DEVELOPER_EMAIL}
# @create_date: $CREATED_TIME
# @last_modified_date: NO_LAST_MODIFIED_DATE
# @description: TODO
#---****************************************************************---
@PACKAGE_INIT@

include("\${CMAKE_CURRENT_LIST_DIR}/@PROJECT_NAME@Targets.cmake")

set_and_check(@PROJECT_NAME@_INCLUDE_DIRS "@HEADER_INSTALL_DIRECTORY@")
set(@PROJECT_NAME@_LIBRARIES)
list(APPEND @PROJECT_NAME@_LIBRARIES @PROJECT_NAME@::@PROJECT_NAME@_shared)
check_required_components(@PROJECT_NAME@)
EOF
