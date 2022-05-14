#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2018 All rights reserved.
# @name: cmakelists.bash
# @author: aliben.develop@gmail.com
# @created_date: 2018-01-31 13:47:34
# @last_modified_date: 2022-05-14 12:02:47
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
set(PROJECT_VERSION_MAJOR 1)
set(PROJECT_VERSION_MINOR 2)
set(PROJECT_VERSION_PATCH 3)
set(PROJECT_VERSION_TWEAK 4)
set(PROJECT_VERSION \${PROJECT_VERSION_MAJOR}.\${PROJECT_VERSION_MINOR}.\${PROJECT_VERSION_PATCH}.\${PROJECT_VERSION_TWEAK})


list(APPEND CMAKE_MODULE_PATH "\${CMAKE_CURRENT_SOURCE_DIR}/cmake")

include(project_configuration)

build_warning("Project: \${PROJECT_NAME}")
build_warning("Build Type: \${CMAKE_BUILD_TYPE}")
build_warning("Debug Postfix: \${CMAKE_DEBUG_POSTFIX}")

# Set Subdir(src)
add_subdirectory(src)
add_subdirectory(examples)
add_subdirectory(test)

cmake_print_variables(CMAKE_INSTALL_PREFIX)
EOF
