#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2019 All rights reserved.
# @file: Test_Demo.hh.bash
# @author: aliben.develop@gmail.com
# @created_date: 2019-08-16 16:43:25
# @last_modified_date: 2019-08-16 17:52:18
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
HEAD_DEF=`echo __${1##*/}__ | tr "a-z.-" "A-Z__"`

#---Shell Command
cat << EOF
#ifndef $HEAD_DEF
#define $HEAD_DEF
/**-----------------------------------------------
  * @Copyright (C) $CREATED_YEAR All rights reserved.
  * @date: $CREATED_YEAR
  * @file: ${1##*/}
  * @version: v0.0.1
  * @author: ${DEVELOPER_EMAIL}
  * @create_date: $CREATED_TIME
  * @last_modified_date: NO_LAST_MODIFIED_DATE
  * @brief: TODO
  * @details: TODO
  *-----------------------------------------------*/

// Header include
#include <iostream>

// Declaration
namespace Demo
{
  class Obj
  {
    public:
      Obj() = default;
      virtual ~Obj() = default;

    public:
      int func_return1();
      int func_return2();
      void setValue(int value);
      int getValue() const;

    private:
      int value_;
  };

  double func_return10();
  double func_return20();
}
#endif // $HEAD_DEF
EOF
