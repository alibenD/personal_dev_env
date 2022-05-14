#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2018 All rights reserved.
# @name: cmakelists.bash
# @author: aliben.develop@gmail.com
# @created_date: 2018-01-31 13:47:34
# @last_modified_date: 2022-05-14 12:25:52
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

file(GLOB_RECURSE HEADERS
  ../include/\${PROJECT_NAME}/*/*.h*
  ../include/\${PROJECT_NAME}/*.h*
  ../include/*.h*
  )
file(GLOB_RECURSE SOURCES *.cc *.cpp *.c *.cxx)

set(PROJECT_PUBLIC_HEADER \${HEADERS})

add_library(\${PROJECT_NAME}_objs
  OBJECT
  ""
)

target_include_directories(\${PROJECT_NAME}_objs
  PUBLIC
    \$<BUILD_INTERFACE:\${CMAKE_BINARY_DIR}/\${PROJECT_INSTALL_INCDIR}>
    \$<BUILD_INTERFACE:\${PROJECT_SOURCE_DIR}/include>
    \$<INSTALL_INTERFACE:\${PROJECT_INSTALL_INCDIR}>
    #\${CMAKE_CURRENT_SOURCE_DIR}/include
    #\${CMAKE_INSTALL_PREFIX}/include
    #\${CMAKE_BINARY_DIR}/include
    #\${CMAKE_CURRENT_BINARY_DIR}
    #\${PROJECT_SOURCE_DIR}/include
)

target_sources(\${PROJECT_NAME}_objs
  PRIVATE
    \${SOURCES}
  )

list(APPEND LIBRARY_CXX_FLAGS
    \${CXX_FLAG_WARNING_AS_ERROR}
    \${CXX_FLAG_WARNING_AS_ERROR}
    \${CXX_FLAG_ALL_WARNING}
    "-Wno-unused-parameter"
    "-Wno-unused-variable"
  )

# todo: manager build_type
if(CMAKE_BUILD_TYPE STREQUAL "Release" OR CMAKE_BUILD_TYPE STREQUAL "RelWithDebInfo")
  #list(APPEND LIBRARY_CXX_FLAGS
  #      "-DNDEBUG"
  #  )
elseif()
  list(APPEND LIBRARY_CXX_FLAGS
        "-O0"
        "-g"
        "--ftest-coverage"
        "-fprofile-arcs"
    )
endif()

target_compile_options(\${PROJECT_NAME}_objs
  PRIVATE
    \${LIBRARY_CXX_FLAGS}
  )

set_target_properties(\${PROJECT_NAME}_objs
  PROPERTIES
    POSITION_INDEPENDENT_CODE ON
    CXX_STANDARD_REQUIRED ON
    CXX_STANDARD 17
    CXX_EXTENSIONS OFF
)

# SHARED Library
add_library(\${PROJECT_NAME}_shared SHARED
    \$<TARGET_OBJECTS:\${PROJECT_NAME}_objs>
)

# STATIC Library
add_library(\${PROJECT_NAME}_static STATIC
    \$<TARGET_OBJECTS:\${PROJECT_NAME}_objs>
)

set_target_properties(\${PROJECT_NAME}_shared
  PROPERTIES
    OUTPUT_NAME \${PROJECT_NAME}
    IMPORTED_LOCATION "\${LIBRARY_OUTPUT_PATH}/lib\${PROJECT_NAME}.so"
    #INTERFACE_INCLUDE_DIRECTORIES "\${CMAKE_SOURCE_DIR}/include"
    SOVERSION \${PROJECT_VERSION_MAJOR}
    PUBLIC_HEADER \${PROJECT_PUBLIC_HEADER}
    MACOSX_PATH ON
)

set_target_properties(\${PROJECT_NAME}_static
  PROPERTIES
    OUTPUT_NAME \${PROJECT_NAME}
    IMPORTED_LOCATION "\${LIBRARY_OUTPUT_PATH}/lib\${PROJECT_NAME}.so"
    #INTERFACE_INCLUDE_DIRECTORIES "\${CMAKE_SOURCE_DIR}/include"
)

target_link_libraries(\${PROJECT_NAME}_static \${THIRD_PARTY_LIBS})
target_link_libraries(\${PROJECT_NAME}_shared \${THIRD_PARTY_LIBS})

set(HEADER_INSTALL_DIRECTORY \${CMAKE_INSTALL_PREFIX}/include)

install(
  TARGETS \${PROJECT_NAME}_shared \${PROJECT_NAME}_static
  EXPORT \${PROJECT_NAME}Targets
  RUNTIME DESTINATION \${CMAKE_INSTALL_PREFIX}/bin
  LIBRARY DESTINATION \${CMAKE_INSTALL_PREFIX}/lib
  ARCHIVE DESTINATION \${CMAKE_INSTALL_PREFIX}/lib
  PUBLIC_HEADER
  DESTINATION \${HEADER_INSTALL_DIRECTORY}/\${PROJECT_NAME}
    COMPONENT dev
)

install(
  EXPORT
    \${PROJECT_NAME}Targets
  NAMESPACE
    "\${PROJECT_NAME}::"
  DESTINATION
    \${PROJECT_INSTALL_CMAKEDIR}
  COMPONENT
    dev
)

include(CMakePackageConfigHelpers)

write_basic_package_version_file(
  \${CMAKE_CURRENT_BINARY_DIR}/\${PROJECT_NAME}ConfigVersion.cmake
  VERSION \${PROJECT_VERSION}
  COMPATIBILITY SameMajorVersion
)

configure_package_config_file(
  \${PROJECT_SOURCE_DIR}/cmake/\${PROJECT_NAME}Config.cmake.in
  \${CMAKE_CURRENT_BINARY_DIR}/\${PROJECT_NAME}Config.cmake
  INSTALL_DESTINATION \${PROJECT_INSTALL_CMAKEDIR}
)

install(
  FILES
    \${CMAKE_CURRENT_BINARY_DIR}/\${PROJECT_NAME}Config.cmake
    \${CMAKE_CURRENT_BINARY_DIR}/\${PROJECT_NAME}ConfigVersion.cmake
  DESTINATION
    \${PROJECT_INSTALL_CMAKEDIR}
)

EOF
