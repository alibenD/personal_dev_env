#!/bin/bash
#---Automatically Generated from template 'bash' wrote by @aliben---
# 
# @name: ros_node.cc.bash
# @author: aliben.develop@gmail.com
# @created_date: 2017-10-23 00:46:17
# @last_modified_date: 2019-08-15 09:50:34
# @description: Generate a template for new main.cc(full-name)
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
cat << EOF
/**
  * @Copyright (C) All rights reserved.
  * @date: $CREATED_YEAR
  * @author: ${DEVELOPER_EMAIL}
  * @brief: TODO
  */

/**-----------------------------------------------
  * @filename: ${1##*/}
  * @created_date: $CREATED_TIME
  * @last_modified_date: NO_LAST_MODIFIED_DATE
  *-----------------------------------------------*/

//INCLUDE
#include <ros/ros.h>

//CODE

int main(int argc, char** argv){
  ros::init(argc, argv, "Node_Name");
  ros::NodeHandle nh;

  return 0;
}
EOF
