#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2018 All rights reserved.
# @name: cmakelists.bash
# @author: aliben.develop@gmail.com
# @created_date: 2018-01-31 13:47:34
# @last_modified_date: 2019-08-19 16:39:07
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
cmake_minimum_required(VERSION 3.10)

#project name
project(${PROJECT_NAME})

# Option
  OPTION(ENABLE_ALL_WARNING ON)
  OPTION(ENABLE_WARNING_AS_ERROR OFF)
  OPTION(ENABLE_WARNING_EXTRA ON)
  OPTION(ENABLE_VERBOSE ON)

  OPTION(BUILD_GTESTS "Build test example cases with google test" ON)
  OPTION(WITH_GLOG "Enable google log in this case" OFF)

  OPTION(BUILD_SHARED_LIBS "Build shared libraries" ON)

# Compiler flag
  IF(ENABLE_ALL_WARNING)
    SET(CXX_FLAG_ALL_WARNING "-Wall")
  ENDIF()
  IF(ENABLE_WARNING_AS_ERROR)
    SET(CXX_FLAG_WARNING_AS_ERROR "-Werror")
  ENDIF()
  IF(ENABLE_WARNING_EXTRA)
    SET(CXX_FLAG_WARNING_EXTRA "-Wextra")
  ENDIF()
  IF(ENABLE_VERBOSE)
    SET(CMAKE_VERBOSE_MAKEFILE ON)
  ENDIF()

# CMake Build System Default Setup
  SET(CMAKE_BUILD_TYPE "Release" CACHE STRING "Default Build Type")
  SET_PROPERTY(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS Release Debug RelWithDebInfo MinSizeRel)

  #SET(CMAKE_VERBOSE_MAKEFILE OFF)
  SET(CMAKE_CXX_STANDARD 11)
  SET(CMAKE_CXX_FLAGS 
     "\${CMAKE_CXX_FLAGS} \\
      \${CXX_FLAG_ALL_WARNING} \\
      \${CXX_FLAG_WARNING_EXTRA} \\
      \${CXX_FLAG_WARNING_AS_ERROR} \\
      -std=c++14 \\
      -fPIC \\
      -Wno-deprecated-register \\
      -Wno-deprecated-declarations \\
      -Wno-unused-private-field \\
      -Wno-unused-parameter \\
      -Wno-unused-variable \\
      -fcolor-diagnostics \\
      -ftemplate-backtrace-limit=0 \\
      -march=native \\
      "
      )
  #SET(CMAKE_POSITION_INDEPENDENT_CODE ON)

  # Build type default
  IF(NOT CMAKE_BUILD_TYPE)
    SET(CMAKE_BUILD_TYPE RELEASE)
  ENDIF()

  IF(CMAKE_BUILD_TYPE STREQUAL "RELEASE")
    ADD_DEFINITIONS(-DNDEBUG)
    SET(CMAKE_CXX_FLAGS_RELEASE " -O3")
  ELSEIF(CMAKE_BUILD_TYPE STREQUAL "DEBUG")
    SET(CMAKE_DEBUG_POSTFIX _debug)
    SET(CMAKE_CXX_FLAGS_DEBUG "-O0 -g --coverage")
  ENDIF()

  MESSAGE( STATUS "Project:  \${PROJECT_NAME}" )
  MESSAGE( STATUS "Build Type: " \${CMAKE_BUILD_TYPE})
  MESSAGE( STATUS "DEBUG POSTFIX: " \${CMAKE_DEBUG_POSTFIX})

  # Cross-platform check
  #IF("\${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
  #  SET(CMAKE_CXX_FLAGS_DEBUG "\${CMAKE_CXX_FLAGS} -O0 -g")
  #  SET(CMAKE_CXX_FLAGS_RELEASE "\${CMAKE_CXX_FLAGS} -O3")
  #ELSEIF(CMAKE_HOST_APPLE)
  #  SET(CMAKE_CXX_FLAGS_RELEASE "\${CMAKE_CXX_FLAGS} -O3")
  #  SET(CMAKE_CXX_FLAGS_DEBUG "\${CMAKE_CXX_FLAGS} -O0 -g")
  #ELSEIF("\${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
  #  SET(CMAKE_CXX_FLAGS_RELEASE "-O3")
  #  SET(CMAKE_CXX_FLAGS_DEBUG "-O0 -g")
  #  SET(CMAKE_EXE_LINKER_FLAGS_COVERAGE "\${CMAKE_EXE_LINKER_FLAGS_DEBUG}" --coverage)
  #  SET(CMAKE_SHARED_LINKER_FLAGS_COVERAGE "\${CMAKE_SHARED_LINKER_FLAGS_DEBUG}" --coverage)
  #ELSEIF(CMAKE_CXX_COMPILER_ID MATCHES "^MSVC$")
  #  ADD_DEFINITION("-D _USE_MATH_DEFINES /bigobj /wd4305 /wd4244 /MP")
  #  ADD_DEFINITION("-D PROJECT_CORE_EXPORTS")
  #ENDIF()

  SET(CMAKE_MACOSX_RPATH 1)
  set(CMAKE_SKIP_BUILD_RPATH FALSE)                 # Compile with RPATH
  set(CMAKE_BUILD_WITH_INSTALL_RPATH FALSE)
  SET(CMAKE_INSTALL_RPATH "\${CMAKE_INSTALL_PREFIX}/lib")
  SET(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)
  SET(EXECUTABLE_OUTPUT_PATH \${PROJECT_SOURCE_DIR}/bin)
  SET(LIBRARY_OUTPUT_PATH \${PROJECT_SOURCE_DIR}/lib)
  SET(\${PROJECT_NAME}_LIB_TYPE STATIC)
  IF(BUILD_SHARED_LIBS)
    SET(BUILD_SHARED_LIBS SHARED)
  ENDIF()

# Add extra Find module
  LIST(APPEND CMAKE_MODULE_PATH \${PROJECT_SOURCE_DIR}/cmake_modules)
# Find *Config.cmake
  # Example: find_package(OpenCV REQUIRED)
  IF(BUILD_GTESTS)
    ENABLE_TESTING()
    find_package(GTEST REQUIRED)
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
  LINK_DIRECTORIES(\${PROJECT_SOURCE_DIR}/lib)

  SET(APPLE_LIBS \${COCOA_LIBRARY} \${IOKit_LIBRARY} \${OpenGL_LIBRARY} \${CoreVideo_LIBRARY})
  SET(APPLE_LIBS \${APPLE_LIBS} \${GLFW3_LIBRARY} \${ASSIMP_LIBRARY})
  SET(LIBS \${LIBS} \${APPLE_LIBS})

  SET( THIRD_PARTY_LIBS
    \${THIRD_PARTY_LIBS}
    #\${OpenCV_LIBS}
  )


# Set Subdir(src)
  ADD_SUBDIRECTORY(src)
  ADD_SUBDIRECTORY(examples)
  IF(BUILD_GTESTS)
    ADD_SUBDIRECTORY(testing)
  ENDIF()

# EXECUTABLE
  # Example: ADD_EXECUTABLE( EXEC_NAME SRC_FILE_NAME_LIST )

# TARGET LINK
  # Example: TARGET_LINK_LIBRARIES( EXEC_NAME LIBPATH ) ...LIB_PATH e.g. \${OPENCV_LIBS}
EOF
