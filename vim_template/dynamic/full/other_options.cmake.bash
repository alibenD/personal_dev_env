#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2019 All rights reserved.
# @file: other_options.cmake.bash
# @author: aliben.develop@gmail.com
# @created_date: 2019-08-21 16:51:39
# @last_modified_date: 2021-11-09 22:48:14
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
cat << EOF
#---Automatically Generated from template 'option.cmake' wrote by @aliben---
#
# @Copyright (C) $CREATED_YEAR All rights reserved.
# @filename: ${1##*/}
# @author: ${DEVELOPER_EMAIL}
# @create_date: $CREATED_TIME
# @last_modified_date: NO_LAST_MODIFIED_DATE
# @description: TODO
#---****************************************************************---

  set(CMAKE_MACOSX_RPATH 1)
  set(CMAKE_SKIP_BUILD_RPATH FALSE)                 # Compile with RPATH
  set(CMAKE_BUILD_WITH_INSTALL_RPATH FALSE)
  set(CMAKE_INSTALL_RPATH "\${CMAKE_INSTALL_PREFIX}/lib")
  set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)
  set(EXECUTABLE_OUTPUT_PATH \${CMAKE_CURRENT_BINARY_DIR}/bin)
  set(LIBRARY_OUTPUT_PATH \${CMAKE_CURRENT_BINARY_DIR}/lib)
  set(\${PROJECT_NAME}_LIB_TYPE STATIC)
  if(BUILD_SHARED_LIBS)
    set(BUILD_SHARED_LIBS SHARED)
  endif()
EOF
