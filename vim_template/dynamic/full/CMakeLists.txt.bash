#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2018 All rights reserved.
# @name: cmakelists.bash
# @author: aliben.develop@gmail.com
# @created_date: 2018-01-31 13:47:34
# @last_modified_date: 2019-08-21 17:10:23
# @description: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`
PROJECT_NAME=$1

#---Shell Command
cat << EOF
#---Automatically Generated from template 'CMakeList.txt' wrote by @aliben---
#
# @Copyright (C) $CREATED_YEAR All rights reserved.
# @filename: ${1##*/}
# @author: ${DEVELOPER_EMAIL}
# @create_date: $CREATED_TIME
# @last_modified_date: NO_LAST_MODIFIED_DATE
# @description: TODO
#---****************************************************************---

# Cmake version required
cmake_minimum_required(VERSION 3.10)

#project name
project(${PROJECT_NAME})

# Option
  IF( EXISTS \${PROJECT_SOURCE_DIR}/cmake_config/option.cmake )
    INCLUDE(\${PROJECT_SOURCE_DIR}/cmake_config/option.cmake)
  ENDIF()

# Compiler flag
  IF( EXISTS \${PROJECT_SOURCE_DIR}/cmake_config/compiler_option.cmake )
    INCLUDE(\${PROJECT_SOURCE_DIR}/cmake_config/compiler_option.cmake)
  ENDIF()

  MESSAGE( STATUS "Project:  \${PROJECT_NAME}" )
  MESSAGE( STATUS "Build Type: " \${CMAKE_BUILD_TYPE})
  MESSAGE( STATUS "DEBUG POSTFIX: " \${CMAKE_DEBUG_POSTFIX})

  IF( EXISTS \${PROJECT_SOURCE_DIR}/cmake_config/other_options.cmake )
    INCLUDE(\${PROJECT_SOURCE_DIR}/cmake_config/other_options.cmake)
  ENDIF()

  IF( EXISTS \${PROJECT_SOURCE_DIR}/cmake_config/find_package.cmake )
    INCLUDE(\${PROJECT_SOURCE_DIR}/cmake_config/find_package.cmake)
  ENDIF()

# Set Subdir(src)
  ADD_SUBDIRECTORY(src)
  ADD_SUBDIRECTORY(examples)
  IF(BUILD_GTESTS)
    ADD_SUBDIRECTORY(testing)
  ENDIF()

# EXECUTABLE
  # Example: ADD_EXECUTABLE( EXEC_NAME SRC_FILE_NAME_LIST )

# TARGET LINK
  # Example: TARGET_LINK_LIBRARIES( EXEC_NAME LIBPATH ) ...LIB_PATH e.g. \${OPENCV_LIBS}
EOF
