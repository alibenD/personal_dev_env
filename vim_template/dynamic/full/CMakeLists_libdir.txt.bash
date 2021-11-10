#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2018 All rights reserved.
# @name: cmakelists.bash
# @author: aliben.develop@gmail.com
# @created_date: 2018-01-31 13:47:34
# @last_modified_date: 2021-11-10 20:54:54
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
  ../include/\$PROJECT_NAME/*/*.h*
  ../include/\$PROJECT_NAME/*.h*
  ../include/*.h*
  )
file(GLOB_RECURSE SOURCES *.cc *.cpp *.c *.cxx)

add_library(\${PROJECT_NAME}_objs
  OBJECT
  ""
)

target_include_directories(\${PROJECT_NAME}_objs
  PUBLIC
    \${CMAKE_CURRENT_SOURCE_DIR}/include
    \${CMAKE_CURRENT_SOURCE_DIR}/include
    \${CMAKE_INSTALL_PREFIX}/include
    \${CMAKE_BINARY_DIR}/include
    \${CMAKE_CURRENT_BINARY_DIR}
    \${PROJECT_SOURCE_DIR}/include
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
    POSITION_INDEPENDENT_CODE 1
    CXX_STANDARD_REQUIRED ON
    CXX_STANDARD 17
    CXX_EXTENSIONS OFF
)

add_library(\${PROJECT_NAME}_shared SHARED
    \$<TARGET_OBJECTS:\${PROJECT_NAME}_objs>
)

add_library(\${PROJECT_NAME}_static STATIC
    \$<TARGET_OBJECTS:\${PROJECT_NAME}_objs>
)

set_target_properties(\${PROJECT_NAME}_shared
  PROPERTIES
    OUTPUT_NAME \${PROJECT_NAME}
    IMPORTED_LOCATION "\${LIBRARY_OUTPUT_PATH}/lib\${PROJECT_NAME}.so"
    INTERFACE_INCLUDE_DIRECTORIES "\${CMAKE_SOURCE_DIR}/include"
)

set_target_properties(\${PROJECT_NAME}_static
  PROPERTIES
    OUTPUT_NAME \${PROJECT_NAME}
    IMPORTED_LOCATION "\${LIBRARY_OUTPUT_PATH}/lib\${PROJECT_NAME}.so"
    INTERFACE_INCLUDE_DIRECTORIES "\${CMAKE_SOURCE_DIR}/include"
)

target_link_libraries(\${PROJECT_NAME}_static \${THIRD_PARTY_LIBS})
target_link_libraries(\${PROJECT_NAME}_shared \${THIRD_PARTY_LIBS})
EOF
