#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2018 All rights reserved.
# @name: cmakelists.bash
# @author: aliben.develop@gmail.com
# @created_date: 2018-01-31 13:47:34
# @last_modified_date: 2021-11-09 23:08:34
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

if(BUILD_TESTS)
  enable_testing()
  file(GLOB_RECURSE EXAMPLES *.cc)
  foreach(EXAMPLE \${EXAMPLES})
    get_filename_component(MY_TARGET "\${EXAMPLE}" NAME_WE)
    list(APPEND TEST_TARGETS \${MY_TARGET})
    add_executable(\${MY_TARGET} \${EXAMPLE})
    #add_dependencies(\${MY_TARGET} \${PROJECT_NAME})
    target_include_directories(\${MY_TARGET}
        PRIVATE
          \${PROJECT_SOURCE_DIR}/include
          \${PROJECT_BINARY_DIR}/include
          \${CMAKE_INSTALL_PREFIX}/include
      )
    target_link_libraries(\${MY_TARGET}
      PRIVATE
        \${PROJECT_NAME}
        \${THIRD_PARTY_LIBS}
        \${TEST_LIBS}
      )

  endforeach()

  foreach(test_target IN LISTS TEST_TARGETS)
    add_test(
      NAME \${test_target}
      COMMAND \$<TARGET_FILE:\${test_target}>)
  endforeach()

  # if expecting some tests failed.
  # call set_tests_properties(example PROPERTIES WILL_FAIL true)

  # timeout for a test set to 10 seconds
  # set_test_properties(example PROPERTIES TIMEOUT 10)
endif()
EOF
