#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2019 All rights reserved.
# @file: Test_Demo.cc.bash
# @author: aliben.develop@gmail.com
# @created_date: 2019-08-16 17:40:19
# @last_modified_date: 2019-08-16 18:07:10
# @brief: TODO
# @details: TODO
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
#include <$PROJECT_NAME/Test_Demo.hh>
#include <iostream>

//CODE
namespace Demo
{
  int Obj::func_return1(){ return 1; }
  int Obj::func_return2(){ return 2; }
  int Obj::getValue() const { return value_; }
  void Obj::setValue(int value) { value_ = value; }

  double func_return10() { return 10.0; }
  double func_return20() { return 20.0; }
}
EOF
