#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2021 All rights reserved.
# @file: sanitize_example.cc.bash
# @author: aliben.develop@gmail.com
# @created_date: 2021-11-09 23:46:13
# @last_modified_date: 2021-11-09 23:50:11
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`
PROJECT_NAME=$2

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

#include <cstdio>
#include <thread>
#include <$PROJECT_NAME/dummy_test.hh>

inline static int a = 0;

void f()
{
  a++;
}

int main(int argc, char **argv)
{
  int *a = new int[10];
  a[5] = 0;
  volatile int b = a[argc];
  if (b) printf("xx\n");

  auto t1 = std::thread(&f);
  auto t2 = std::thread(&f);
  t1.join();
  t2.join();

  //int stack_array[100];
  //stack_array[1] = 0;
  //return stack_array[argc + 100]; // BOOM
}
EOF
