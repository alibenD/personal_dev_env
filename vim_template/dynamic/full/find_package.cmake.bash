#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2019 All rights reserved.
# @file: find_package.cmake.bash
# @author: aliben.develop@gmail.com
# @created_date: 2019-08-21 16:38:22
# @last_modified_date: 2021-11-09 23:44:12
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
  if(BUILD_TESTS)
    find_package(GTest REQUIRED)
    find_package(Threads REQUIRED)
    include_directories(\${GTEST_INCLUDE_DIRS})
    set(TEST_LIBS
    \${GTEST_BOTH_LIBRARIES}
    \${CMAKE_THREAD_LIBS_INIT})
  endif()
  if(WITH_GLOG)
    add_definitions(-DENABLE_GLOG)
  endif()
  #find_package(OpenCV)
  #find_package(Eigen3)
  set(CMAKE_THREAD_PREFER_PTHREAD TRUE)
  set(THREADS_PREFER_PTHREAD_FLAG TRUE)
  find_package(Threads REQUIRED)

  find_program(MEMORYCHECK_COMMAND NAMES valgrind)
  set(CTEST_MEMORYCHECK_COMMAND_OPTIONS "--trace-children=yes --leak-check=full")
  include(CTest)

# Set&Add INCLUDE PATH
  # Example: set ( VPATH_NAME PATH )
  #          include_directories(\${VPATH_NAME})
  include_directories(\${PROJECT_SOURCE_DIR}/include)
  include_directories(\${PROJECT_SOURCE_DIR}/build/include)
  include_directories(\${CMAKE_INSTALL_PREFIX}/include)
  include_directories(\${OPENCV_INCLUDE_DIRS})
  include_directories(\${EIGEN3_INCLUDE_DIRS})

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
