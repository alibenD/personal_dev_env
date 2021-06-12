#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2019 All rights reserved.
# @file: find_package.cmake.bash
# @author: aliben.develop@gmail.com
# @created_date: 2019-08-21 16:38:22
# @last_modified_date: 2021-06-12 21:42:50
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
  LIST(APPEND CMAKE_MODULE_PATH \${PROJECT_SOURCE_DIR}/cmake_modules)
# Find *Config.cmake
  # Example: find_package(OpenCV REQUIRED)
  IF(BUILD_GTESTS)
    ENABLE_TESTING()
    find_package(GTest REQUIRED)
    find_package(Threads REQUIRED)
    INCLUDE_DIRECTORIES(\${GTEST_INCLUDE_DIRS})
    SET(TEST_LIBS
    \${GTEST_BOTH_LIBRARIES}
    \${CMAKE_THREAD_LIBS_INIT})
  ENDIF()
  IF(WITH_GLOG)
    ADD_DEFINITIONS(-DENABLE_GLOG)
  ENDIF()
  #find_package(OpenCV)
  #find_package(Eigen3)

# Set&Add INCLUDE PATH
  # Example: SET ( VPATH_NAME PATH )
  #          INCLUDE_DIRECTORIES(\${VPATH_NAME})
  INCLUDE_DIRECTORIES(\${PROJECT_SOURCE_DIR}/include)
  INCLUDE_DIRECTORIES(\${PROJECT_SOURCE_DIR}/build/include)
  INCLUDE_DIRECTORIES(\${CMAKE_INSTALL_PREFIX}/include)
  INCLUDE_DIRECTORIES(\${OPENCV_INCLUDE_DIRS})
  INCLUDE_DIRECTORIES(\${EIGEN3_INCLUDE_DIRS})

# Set&Add LIB PATH/LINKING_DIRECTORIES
  # Example: LINK_DIRECTORIES(\${CMAKE_INSTALL_PREFIX}/lib)
  LINK_DIRECTORIES(\${CMAKE_INSTALL_PREFIX}/lib)
  LINK_DIRECTORIES(\${CMAKE_CURRENT_BINARY_DIR}/lib)

  SET(APPLE_LIBS \${COCOA_LIBRARY} \${IOKit_LIBRARY} \${OpenGL_LIBRARY} \${CoreVideo_LIBRARY})
  SET(APPLE_LIBS \${APPLE_LIBS} \${GLFW3_LIBRARY} \${ASSIMP_LIBRARY})
  SET(LIBS \${LIBS} \${APPLE_LIBS})

  SET( THIRD_PARTY_LIBS
    \${THIRD_PARTY_LIBS}
    #\${OpenCV_LIBS}
  )
EOF
