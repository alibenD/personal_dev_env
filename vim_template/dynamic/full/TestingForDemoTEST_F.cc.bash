#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2019 All rights reserved.
# @file: TestingForDemoTEST_F.cc.bash
# @author: aliben.develop@gmail.com
# @created_date: 2019-08-16 18:33:16
# @last_modified_date: 2019-08-16 18:54:30
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

class DemoTest : public testing::Test
{
  protected:
    Obj* ptr_obj_;
    virtual void SetUp() override{
      this->ptr_obj_ = new Obj();
      this->ptr_obj_->setValue(2);
    }

    virtual void TearDown() override{
      delete this->ptr_obj_;
      this->ptr_obj_ = nullptr;
    }
};

TEST_F(DemoTest, ObjTestCase1)
{
  EXPECT_EQ(1, ptr_obj_->func_return1());
  EXPECT_EQ(2, ptr_obj_->func_return2());
  EXPECT_EQ(2, ptr_obj_->getValue());
  ptr_obj_->setValue(10);
  EXPECT_EQ(10, ptr_obj_->getValue());
};

TEST_F(DemoTest, ObjTestCase2)
{
  EXPECT_EQ(2, ptr_obj_->getValue());
}

int main(int argc, char** argv)
{
  testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
EOF
