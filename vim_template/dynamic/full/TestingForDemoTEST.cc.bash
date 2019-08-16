#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2019 All rights reserved.
# @file: TestingForDemoTEST.cc.bash
# @author: aliben.develop@gmail.com
# @created_date: 2019-08-16 18:07:51
# @last_modified_date: 2019-08-16 18:53:18
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`
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
#include <gtest/gtest.h>

//CODE

using namespace Demo;

TEST(DemoFuncTest, return10)
{
  EXPECT_EQ(10.0, func_return10());
};

TEST(DemoFuncTest, return20)
{
  EXPECT_EQ(20.0, func_return20());
};

int main(int argc, char** argv)
{
  testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
EOF
