#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2019 All rights reserved.
# @file: other_options.cmake.bash
# @author: aliben.develop@gmail.com
# @created_date: 2019-08-21 16:51:39
# @last_modified_date: 2019-08-21 16:54:23
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

  SET(CMAKE_MACOSX_RPATH 1)
  set(CMAKE_SKIP_BUILD_RPATH FALSE)                 # Compile with RPATH
  set(CMAKE_BUILD_WITH_INSTALL_RPATH FALSE)
  SET(CMAKE_INSTALL_RPATH "\${CMAKE_INSTALL_PREFIX}/lib")
  SET(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)
  SET(EXECUTABLE_OUTPUT_PATH \${PROJECT_SOURCE_DIR}/bin)
  SET(LIBRARY_OUTPUT_PATH \${PROJECT_SOURCE_DIR}/lib)
  SET(\${PROJECT_NAME}_LIB_TYPE STATIC)
  IF(BUILD_SHARED_LIBS)
    SET(BUILD_SHARED_LIBS SHARED)
  ENDIF()
EOF
