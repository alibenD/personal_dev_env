#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2019 All rights reserved.
# @file: option.cmake.bash
# @author: aliben.develop@gmail.com
# @created_date: 2019-08-21 09:42:57
# @last_modified_date: 2022-02-12 20:45:26
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
  option(ENABLE_ALL_WARNING ON)
  option(ENABLE_WARNING_AS_ERROR OFF)
  option(ENABLE_WARNING_EXTRA ON)
  option(ENABLE_VERBOSE ON)
  option(ENABLE_PROFILER OFF)

  option(BUILD_GTESTS "Build test example cases with google test" OFF)
  option(WITH_GLOG "Enable google log in this case" OFF)

  option(BUILD_SHARED_LIBS "Build shared libraries" ON)

# CMake Build System Default Setup
if(NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
else()
  set(CMAKE_BUILD_TYPE "Release" CACHE STRING "Default Build Type" FORCE)
  set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS Release Debug RelWithDebInfo MinSizeRel)
endif()

EOF
