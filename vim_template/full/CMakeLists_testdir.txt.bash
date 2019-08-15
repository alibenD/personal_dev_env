#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2018 All rights reserved.
# @name: cmakelists.bash
# @author: aliben.develop@gmail.com
# @created_date: 2018-01-31 13:47:34
# @last_modified_date: 2019-08-15 09:48:25
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


FILE(GLOB_RECURSE EXAMPLES *.cc)
FOREACH(EXAMPLE \${EXAMPLES})
  GET_FILENAME_COMPONENT(MY_TARGET "\${EXAMPLE}" NAME_WE)
  ADD_EXECUTABLE(\${MY_TARGET} \${EXAMPLE})
  TARGET_LINK_LIBRARIES(\${MY_TARGET}
    $PROJECT_NAME
    \${THIRD_PARTY_LIBS}
    \${TEST_LIBS}
    )
  ADD_TEST(\${MY_TARGET} \${EXECUTABLE_OUTPUT_PATH}/\${MY_TARGET})
ENDFOREACH()
EOF
