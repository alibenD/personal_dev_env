#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2022 All rights reserved.
# @file: project_configuration.cmake.bash
# @author: aliben.develop@gmail.com
# @created_date: 2022-05-14 11:40:02
# @last_modified_date: 2022-05-14 14:00:58
# @brief: TODO
#---***********************************************---

#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
cat << EOF
#---Automatically Generated from template 'option.cmake' wrote by ${DEVELOPER_NAME}---
#
# @Copyright (C) $CREATED_YEAR All rights reserved.
# @filename: ${1##*/}
# @author: ${DEVELOPER_EMAIL}
# @create_date: $CREATED_TIME
# @last_modified_date: NO_LAST_MODIFIED_DATE
# @description: TODO
#---****************************************************************---

include(GNUInstallDirs)
include(CMakePrintHelpers)
include(CMakeDependentOption)
include(CheckCXXCompilerFlag)
#check_cxx_compiler_flag(-someflag OUTPUT_VARIABLE)
include(CheckIPOSupported)
include(CMakePackageConfigHelpers)
check_ipo_supported(RESULT result)

include(colors)
include(option)
include(compiler_option)
include(other_options)
include(find_package)
include(system_detector)
define_colors()

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY \${PROJECT_BINARY_DIR}/\${CMAKE_INSTALL_LIBDIR})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY \${PROJECT_BINARY_DIR}/\${CMAKE_INSTALL_LIBDIR})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY \${PROJECT_BINARY_DIR}/\${CMAKE_INSTALL_BINDIR})

set(DEF_INSTALL_CMAKEDIR share/cmake/\${PROJECT_NAME})

set(PROJECT_INSTALL_LIBDIR \${CMAKE_INSTALL_LIBDIR} CACHE PATH "Installation directory for libraries")
set(PROJECT_INSTALL_BINDIR \${CMAKE_INSTALL_BINDIR} CACHE PATH "Installation directory for executables")
set(PROJECT_INSTALL_INCDIR \${CMAKE_INSTALL_INCLUDEDIR} CACHE PATH "Installation directory for header files")
set(PROJECT_INSTALL_CMAKEDIR \${DEF_INSTALL_CMAKEDIR} CACHE PATH "Installation directory for CMake files")

foreach(p LIB BIN INC CMAKE)
  file(TO_NATIVE_PATH \${CMAKE_INSTALL_PREFIX}/\${PROJECT_INSTALL_\${p}DIR} _path)
  message(STATUS "Installing \${p} components to \${_path}")
  unset(_path)
endforeach()

cmake_print_variables(PROJECT_INSTALL_LIBDIR)
cmake_print_variables(PROJECT_INSTALL_BINDIR)
cmake_print_variables(PROJECT_INSTALL_INCDIR)

cmake_print_variables(CMAKE_ARCHIVE_OUTPUT_DIRECTORY)
cmake_print_variables(CMAKE_LIBRARY_OUTPUT_DIRECTORY)
cmake_print_variables(CMAKE_RUNTIME_OUTPUT_DIRECTORY)
EOF
