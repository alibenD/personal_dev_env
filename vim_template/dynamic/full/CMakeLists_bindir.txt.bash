#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2018 All rights reserved.
# @name: cmakelists.bash
# @author: aliben.develop@gmail.com
# @created_date: 2018-01-31 13:47:34
# @last_modified_date: 2021-11-10 21:45:10
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

list(APPEND CXX_BASIC_FLAGS "-g3" "-O1")
include(CheckCXXCompilerFlag)
set(ADDRESS_SAN_FLAGS "-fsanitize=address -fno-omit-frame-pointer")
set(THREAD_SAN_FLAGS "-fsanitize=thread -fno-omit-frame-pointer -fPIE")
set(MEMORY_SAN_FLAGS "-fsanitize=memory -fno-omit-frame-pointer -fPIE")
set(CMAKE_REQUIRED_FLAGS \${ADDRESS_SAN_FLAGS})
check_cxx_compiler_flag(\${ADDRESS_SAN_FLAGS} address_san_work)
set(CMAKE_REQUIRED_FLAGS \${THREAD_SAN_FLAGS})
check_cxx_compiler_flag(\${THREAD_SAN_FLAGS} thread_san_work)
set(CMAKE_REQUIRED_FLAGS \${MEMORY_SAN_FLAGS})
check_cxx_compiler_flag(\${MEMORY_SAN_FLAGS} memory_san_work)
string(REPLACE " " ";" _ADDRESS_SAN_FLAGS \${ADDRESS_SAN_FLAGS})
string(REPLACE " " ";" _THREAD_SAN_FLAGS \${THREAD_SAN_FLAGS})
string(REPLACE " " ";" _MEMORY_SAN_FLAGS \${MEMORY_SAN_FLAGS})
unset(CMAKE_REQUIRED_FLAGS)

file(GLOB EXAMPLES *.cc)
foreach(EXAMPLE \${EXAMPLES})
  get_filename_component(MY_TARGET "\${EXAMPLE}" NAME_WE)
  add_executable(\${MY_TARGET} \${EXAMPLE})
  #add_dependencies(\${MY_TARGET} \${PROJECT_NAME})
  target_include_directories(\${MY_TARGET}
      PUBLIC
        \${CMAKE_CURRENT_SOURCE_DIR}/include
        \${CMAKE_INSTALL_PREFIX}/include
        \${CMAKE_BINARY_DIR}/include
        \${PROJECT_SOURCE_DIR}/include
    )
  target_link_libraries(\${MY_TARGET}
    PUBLIC
      Threads::Threads
      #\$<\$<BOOL:{asan_works}>:\${_asan_flags}>
    INTERFACE
      \${PROJECT_NAME}
      \${THIRD_PARTY_LIBS})

  if(address_san_work)
    add_executable(\${MY_TARGET}_san \${EXAMPLE})
    target_include_directories(\${MY_TARGET}_san
        PUBLIC
          \${CMAKE_CURRENT_SOURCE_DIR}/include
          \${CMAKE_INSTALL_PREFIX}/include
          \${CMAKE_BINARY_DIR}/include
          \${PROJECT_SOURCE_DIR}/include
    )
    target_link_libraries(\${MY_TARGET}_san
      PUBLIC
        Threads::Threads
      PRIVATE
        \${_ADDRESS_SAN_FLAGS}
      INTERFACE
        \${PROJECT_NAME}
        \${THIRD_PARTY_LIBS})
    target_compile_options(\${MY_TARGET}_san
      PUBLIC
        \${CXX_BASIC_FLAGS}
        \${_ADDRESS_SAN_FLAGS}
    )

    add_test(
      NAME \${MY_TARGET}_san
      COMMAND \$<TARGET_FILE:\${MY_TARGET}_san>
      )
  endif()

  if(thread_san_work)
    add_executable(\${MY_TARGET}_thread \${EXAMPLE})
    target_include_directories(\${MY_TARGET}_thread
        PUBLIC
          \${CMAKE_CURRENT_SOURCE_DIR}/include
          \${CMAKE_INSTALL_PREFIX}/include
          \${CMAKE_BINARY_DIR}/include
          \${PROJECT_SOURCE_DIR}/include
    )
    target_link_libraries(\${MY_TARGET}_thread
      PUBLIC
        Threads::Threads
        \${_THREAD_SAN_FLAGS}
      INTERFACE
        \${PROJECT_NAME}
        \${THIRD_PARTY_LIBS})

    target_compile_options(\${MY_TARGET}_thread
      PUBLIC
        \${CXX_BASIC_FLAGS}
        \${_THREAD_SAN_FLAGS}
    )

    add_test(
      NAME \${MY_TARGET}_thread
      COMMAND \$<TARGET_FILE:\${MY_TARGET}_thread>
      )
  endif()

  if(memory_san_work)
    add_executable(\${MY_TARGET}_memory \${EXAMPLE})
    target_include_directories(\${MY_TARGET}_memory
        PUBLIC
          \${CMAKE_CURRENT_SOURCE_DIR}/include
          \${CMAKE_INSTALL_PREFIX}/include
          \${CMAKE_BINARY_DIR}/include
          \${PROJECT_SOURCE_DIR}/include
    )
    target_link_libraries(\${MY_TARGET}_memory
      PUBLIC
        Threads::Threads
        \${_MEMORY_SAN_FLAGS}
      INTERFACE
        \${PROJECT_NAME}
        \${THIRD_PARTY_LIBS})
    target_compile_options(\${MY_TARGET}_memory
      PUBLIC
        \${CXX_BASIC_FLAGS}
        \${_MEMORY_SAN_FLAGS}
        -fPIC
    )

    add_test(
      NAME \${MY_TARGET}_memory
      COMMAND \$<TARGET_FILE:\${MY_TARGET}_memory>
      )
  endif()

endforeach()
EOF
