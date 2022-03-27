#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2019 All rights reserved.
# @file: find_package.cmake.bash
# @author: aliben.develop@gmail.com
# @created_date: 2019-08-21 16:38:22
# @last_modified_date: 2022-02-12 20:39:43
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

# Add extra Find module
  list(APPEND CMAKE_MODULE_PATH \${PROJECT_SOURCE_DIR}/cmake_modules)
# Find *Config.cmake
  # Example: find_package(OpenCV REQUIRED)
  if(WITH_GLOG)
    add_definitions(-DENABLE_GLOG)
  endif()
  #find_package(OpenCV)
  #find_package(Eigen3)
  set(CMAKE_THREAD_PREFER_PTHREAD TRUE)
  set(THREADS_PREFER_PTHREAD_FLAG TRUE)
  find_package(Threads REQUIRED)

  find_program(CCACHE_PROGRAM ccache)
  if(CCACHE_PROGRAM)
    message("-- ccache: found")
    set(CMAKE_CXX_COMPILER_LAUNCHER "\${CCACHE_PROGRAM}")
    set(CMAKE_CUDA_COMPILER_LAUNCHER "\${CCACHE_PROGRAM}")
  else()
    message("-- ccache: not found")
  endif()

  find_program(MEMORYCHECK_COMMAND NAMES valgrind)
  set(CTEST_MEMORYCHECK_COMMAND_OPTIONS "--trace-children=yes --leak-check=full")
  include(CTest)

# Set&Add LIB PATH/LINKING_DIRECTORIES
  # Example: link_directories(\${CMAKE_INSTALL_PREFIX}/lib)
  link_directories(\${CMAKE_INSTALL_PREFIX}/lib)
  link_directories(\${CMAKE_CURRENT_BINARY_DIR}/lib)

  set(APPLE_LIBS \${COCOA_LIBRARY} \${IOKit_LIBRARY} \${OpenGL_LIBRARY} \${CoreVideo_LIBRARY})
  set(APPLE_LIBS \${APPLE_LIBS} \${GLFW3_LIBRARY} \${ASSIMP_LIBRARY})
  set(LIBS \${LIBS} \${APPLE_LIBS})

  set( THIRD_PARTY_LIBS
    \${THIRD_PARTY_LIBS}
  )
EOF
