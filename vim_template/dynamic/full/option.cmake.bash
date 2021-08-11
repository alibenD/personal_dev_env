#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2019 All rights reserved.
# @file: option.cmake.bash
# @author: aliben.develop@gmail.com
# @created_date: 2019-08-21 09:42:57
# @last_modified_date: 2021-08-11 21:49:06
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

#project name

# Option
  OPTION(ENABLE_ALL_WARNING ON)
  OPTION(ENABLE_WARNING_AS_ERROR OFF)
  OPTION(ENABLE_WARNING_EXTRA ON)
  OPTION(ENABLE_VERBOSE ON)
  OPTION(ENABLE_PROFILER OFF)

  OPTION(BUILD_GTESTS "Build test example cases with google test" OFF)
  OPTION(WITH_GLOG "Enable google log in this case" OFF)

  OPTION(BUILD_SHARED_LIBS "Build shared libraries" ON)

# CMake Build System Default Setup
  SET(CMAKE_BUILD_TYPE "Release" CACHE STRING "Default Build Type" FORCE)
  SET_PROPERTY(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS Release Debug RelWithDebInfo MinSizeRel)

EOF
