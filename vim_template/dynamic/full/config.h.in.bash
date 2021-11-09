#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2021 All rights reserved.
# @file: config.h.in.bash
# @author: aliben.develop@gmail.com
# @created_date: 2021-11-09 22:25:24
# @last_modified_date: 2021-11-09 23:36:54
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
cat << EOF
#pragma once
/**-----------------------------------------------
  * @Copyright (C) $CREATED_YEAR All rights reserved.
  * @date: $CREATED_YEAR
  * @file: ${1##*/}
  * @version: v0.0.1
  * @author: ${DEVELOPER_EMAIL}
  * @create_date: $CREATED_TIME
  * @last_modified_date: NO_LAST_MODIFIED_DATE
  * @brief: TODO
  * @details: TODO
  *-----------------------------------------------*/

// INCLUDE

#define NUMBER_OF_LOGICAL_CORES   @_NUMBER_OF_LOGICAL_CORES@
#define NUMBER_OF_PHYSICAL_CORES  @_NUMBER_OF_PHYSICAL_CORES@
#define TOTAL_VIRTUAL_MEMORY      @_TOTAL_VIRTUAL_MEMORY@
#define AVAILABLE_VIRTUAL_MEMORY  @_AVAILABLE_VIRTUAL_MEMORY@
#define TOTAL_PHYSICAL_MEMORY     @_TOTAL_PHYSICAL_MEMORY@
#define AVAILABLE_PHYSICAL_MEMORY @_AVAILABLE_PHYSICAL_MEMORY@
#define IS_64BIT                  @_IS_64BIT@
#define HAS_FPU                   @_HAS_FPU@
#define HAS_MMX                   @_HAS_MMX@
#define HAS_MMX_PLUS              @_HAS_MMX_PLUS@
#define HAS_SSE                   @_HAS_SSE@
#define HAS_SSE2                  @_HAS_SSE2@
#define HAS_SSE_FP                @_HAS_SSE_FP@
#define HAS_SSE_MMX               @_HAS_SSE_MMX@
#define HAS_AMD_3DNOW             @_HAS_AMD_3DNOW@
#define HAS_AMD_3DNOW_PLUS        @_HAS_AMD_3DNOW_PLUS@
#define HAS_IA64                  @_HAS_IA64@
#define OS_NAME                  "@_OS_NAME@"
#define OS_RELEASE               "@_OS_RELEASE@"
#define OS_VERSION               "@_OS_VERSION@"
#define OS_PLATFORM              "@_OS_PLATFORM@"

EOF
