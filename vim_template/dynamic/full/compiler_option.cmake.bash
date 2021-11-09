#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2019 All rights reserved.
# @file: compiler_option.cmake.bash
# @author: aliben.develop@gmail.com
# @created_date: 2019-08-21 10:23:24
# @last_modified_date: 2021-11-09 23:41:01
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

# Compiler Option
  message(STATUS "Setting up compiler flag")
  if(ENABLE_ALL_WARNING)
    set(CXX_FLAG_ALL_WARNING "-Wall")
  endif()
  if(ENABLE_WARNING_AS_ERROR)
    set(CXX_FLAG_WARNING_AS_ERROR "-Werror")
  endif()
  if(BUILD_TESTS)
    set(CMAKE_CXX_FLAGS "\${CMAKE_CXX_FLAGS} -ftest-coverage -fprofile-arcs")
  endif()
  if(ENABLE_WARNING_EXTRA)
    set(CXX_FLAG_WARNING_EXTRA "-Wextra")
  endif()
  if(ENABLE_VERBOSE)
    set(CMAKE_VERBOSE_MAKEFILE ON)
  endif()


  if(CMAKE_BUILD_TYPE STREQUAL "RELEASE")
  elseif(CMAKE_BUILD_TYPE STREQUAL "DEBUG")
    set(CMAKE_DEBUG_POSTFIX _debug)
  endif()

# Set Compiler Flag
set(CMAKE_CXX_STANDARD 17)

  # Cross-platform check
  #if("\${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
  #  set(CMAKE_CXX_FLAGS_DEBUG "\${CMAKE_CXX_FLAGS} -O0 -g")
  #  set(CMAKE_CXX_FLAGS_RELEASE "\${CMAKE_CXX_FLAGS} -O3")
  #elseif(CMAKE_HOST_APPLE)
  #  set(CMAKE_CXX_FLAGS_RELEASE "\${CMAKE_CXX_FLAGS} -O3")
  #  set(CMAKE_CXX_FLAGS_DEBUG "\${CMAKE_CXX_FLAGS} -O0 -g")
  #elseif("\${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
  #  set(CMAKE_CXX_FLAGS_RELEASE "-O3")
  #  set(CMAKE_CXX_FLAGS_DEBUG "-O0 -g")
  #  set(CMAKE_EXE_LINKER_FLAGS_COVERAGE "\${CMAKE_EXE_LINKER_FLAGS_DEBUG}" --coverage)
  #  set(CMAKE_SHARED_LINKER_FLAGS_COVERAGE "\${CMAKE_SHARED_LINKER_FLAGS_DEBUG}" --coverage)
  #elseif(CMAKE_CXX_COMPILER_ID MATCHES "^MSVC$")
  #  add_definition("-D _USE_MATH_DEFINES /bigobj /wd4305 /wd4244 /MP")
  #  add_definition("-D PROJECT_CORE_EXPORTS")
  #endif()
EOF
