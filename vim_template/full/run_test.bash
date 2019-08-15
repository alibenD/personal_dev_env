#!/bin/bash
#---Generated from template 'bash' wrote by @aliben---
# 
# @name: run_test.bash
# @author: aliben.develop@gmail.com
# @created_date: 2019-01-11 16:27:03
# @last_modified_date: 2019-08-15 09:51:39
# @brief: Generate a template for new bash file
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`


#---Shell Command
cat << EOF
#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) $CREATED_YEAR All rights reserved.
# @file: ${1##*/}
# @author: ${DEVELOPER_EMAIL}
# @created_date: $CREATED_TIME
# @last_modified_date: NO_LAST_MODIFIED_DATE
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=\`date '+%Y-%m-%d %H:%M:%S'\`
CREATED_YEAR=\`date '+%Y'\`

#---Shell Command
set -x
cd build
make test
EOF
