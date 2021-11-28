#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2018 All rights reserved.
# @name: cmakelists.bash
# @author: aliben.develop@gmail.com
# @created_date: 2018-01-31 13:47:34
# @last_modified_date: 2021-11-15 22:18:34
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
cmake_minimum_required(VERSION 3.11 FATAL_ERROR)

#project name
project(${PROJECT_NAME})

list(APPEND CMAKE_MODULE_PATH "\${CMAKE_CURRENT_SOURCE_DIR}/cmake")

include(GNUInstallDirs)
include(CMakePrintHelpers)
include(CMakeDependentOption)

include(colors)
include(option)
include(compiler_option)
include(other_options)
include(find_package)
include(system_detector)
define_colors()

build_warning("Project: \${PROJECT_NAME}")
build_warning("Build Type: \${CMAKE_BUILD_TYPE}")
build_warning("Debug Postfix: \${CMAKE_DEBUG_POSTFIX}")

# Set Subdir(src)
  add_subdirectory(src)
  add_subdirectory(examples)
  add_subdirectory(test)

# EXECUTABLE
  # Example: ADD_EXECUTABLE( EXEC_NAME SRC_FILE_NAME_LIST )

# TARGET LINK
  # Example: TARGET_LINK_LIBRARIES( EXEC_NAME LIBPATH ) ...LIB_PATH e.g. \${OPENCV_LIBS}
  cmake_print_variables(CMAKE_INSTALL_PREFIX)
  set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY \${CMAKE_INSTALL_PREFIX}/\${CMAKE_INSTALL_LIBDIR})
  set(CMAKE_LIBRARY_OUTPUT_DIRECTORY \${CMAKE_INSTALL_PREFIX}/\${CMAKE_INSTALL_LIBDIR})
  set(CMAKE_RUNTIME_OUTPUT_DIRECTORY \${CMAKE_INSTALL_PREFIX}/\${CMAKE_INSTALL_BIN_DIR})
EOF
