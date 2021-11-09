#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2021 All rights reserved.
# @file: system_detector.cmake.bash
# @author: aliben.develop@gmail.com
# @created_date: 2021-11-09 22:49:33
# @last_modified_date: 2021-11-09 22:50:33
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

# os information
if(CMAKE_SYSTEM_NAME STREQUAL "Linux")
  set(SYSTEM_NAME "IS_LINUX")
elseif(CMAKE_SYSTEM_NAME STREQUAL "Darwin")
  set(SYSTEM_NAME "IS_MACOS")
elseif(CMAKE_SYSTEM_NAME STREQUAL "Windows")
  set(SYSTEM_NAME "IS_WINDOWS")
endif()
string(TIMESTAMP _configuration_time "%Y-%m-%d %H:%M:%S [UTC]" UTC)

# PROCESSOR INSTRUCTION SET
# run "cmake --system-information information.txt"
foreach(key IN ITEMS
    NUMBER_OF_LOGICAL_CORES
    NUMBER_OF_PHYSICAL_CORES
    TOTAL_VIRTUAL_MEMORY
    AVAILABLE_VIRTUAL_MEMORY
    TOTAL_PHYSICAL_MEMORY
    AVAILABLE_PHYSICAL_MEMORY
    IS_64BIT
    HAS_FPU
    HAS_MMX
    HAS_MMX_PLUS
    HAS_SSE
    HAS_SSE2
    HAS_SSE_FP
    HAS_SSE_MMX
    HAS_AMD_3DNOW
    HAS_AMD_3DNOW_PLUS
    HAS_IA64
    PROCESSOR_NAME
    PROCESSOR_DESCRIPTION
    OS_NAME
    OS_RELEASE
    OS_VERSION
    OS_PLATFORM
    HOSTNAME
    FQDN
    )
  cmake_host_system_information(RESULT _\${key} QUERY \${key})
endforeach()
configure_file(cmake/template/config.h.in include/config.h @ONLY)

EOF
