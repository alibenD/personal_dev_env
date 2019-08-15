#!/bin/bash
#---Automatically Generated from template 'bash' wrote by @aliben---
# 
# @name: hello_world.cc.bash
# @author: aliben.develop@gmail.com
# @created_date: 2017-10-23 01:01:33
# @last_modified_date: 2019-08-15 09:48:49
# @description: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
PROJECT_NAME=$1

#---Shell Command

cat << EOF
/**-----------------------------------------------
  * @Copyright (C) All rights reserved.
  * @filename: ${1##*/}
  * @author: ${DEVELOPER_EMAIL}
  * @created_date: $CREATED_TIME
  * @last_modified_date: NO_LAST_MODIFIED_DATE
  * @description: TODO
  *-----------------------------------------------*/

//INCLUDE
#include <$PROJECT_NAME/print_hello.hh>

//CODE

int main(int argc, char** argv)
{
  print_hello();
  return 0;
}
EOF
