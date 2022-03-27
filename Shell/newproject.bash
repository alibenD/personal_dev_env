#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2018 All rights reserved.
# @file: newproject.bash
# @author: aliben.develop@gmail.com
# @created_date: 2018-08-31 20:11:33
# @last_modified_date: 2022-02-12 19:57:01
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
PROJECT_NAME=$1
set -x
mkdir -p $PROJECT_NAME/include/$PROJECT_NAME
mkdir -p $PROJECT_NAME/src
mkdir -p $PROJECT_NAME/test
mkdir -p $PROJECT_NAME/examples
#mkdir -p $PROJECT_NAME/log
#mkdir -p $PROJECT_NAME/doc
#mkdir -p $PROJECT_NAME/config
#mkdir -p $PROJECT_NAME/build
#mkdir -p $PROJECT_NAME/bin
#mkdir -p $PROJECT_NAME/lib
mkdir -p $PROJECT_NAME/cmake_modules
mkdir -p $PROJECT_NAME/cmake/template

#hello_world.cc.bash $PROJECT_NAME> $PROJECT_NAME/examples/hello_world.cc
CMakeLists.txt.bash $PROJECT_NAME> $PROJECT_NAME/CMakeLists.txt
CMakeLists_libdir.txt.bash $PROJECT_NAME> $PROJECT_NAME/src/CMakeLists.txt

option.cmake.bash option.cmake > $PROJECT_NAME/cmake/option.cmake
compiler_option.cmake.bash compiler_option.cmake > $PROJECT_NAME/cmake/compiler_option.cmake
other_options.cmake.bash other_option.cmake > $PROJECT_NAME/cmake/other_options.cmake
find_package.cmake.bash find_package.cmake > $PROJECT_NAME/cmake/find_package.cmake
config.h.in.bash config.h.in > ${PROJECT_NAME}/cmake/template/config.h.in
colors.cmake.bash colors.cmake > ${PROJECT_NAME}/cmake/colors.cmake
system_detector.cmake.bash system_detector.cmake > ${PROJECT_NAME}/cmake/system_detector.cmake

#print_hello.cc.bash $PROJECT_NAME> $PROJECT_NAME/src/print_hello.cc
#print_hello.hh.bash $PROJECT_NAME> $PROJECT_NAME/include/$PROJECT_NAME/print_hello.hh
dummy_test.hh.bash dummy_test.hh > $PROJECT_NAME/include/$PROJECT_NAME/dummy_test.hh
dummy_test.cc.bash dummy_test.cc $PROJECT_NAME> $PROJECT_NAME/src/dummy_test.cc
processor-info.cc.bash processor-info.cc > $PROJECT_NAME/examples/processor-info.cc
sanitize_example.cc.bash sanitize_example.cc $PROJECT_NAME > $PROJECT_NAME/examples/sanitize_example.cc

DummyTest.cc.bash DummyTest.cc $PROJECT_NAME > $PROJECT_NAME/test/DummyTest.cc
DummyTest_F.cc.bash DummyTest_F.cc $PROJECT_NAME > $PROJECT_NAME/test/DummyTest_F.cc

CMakeLists_bindir.txt.bash CMakeLists.txt > $PROJECT_NAME/examples/CMakeLists.txt
CMakeLists_testdir.txt.bash CMakeLists.txt > $PROJECT_NAME/test/CMakeLists.txt
build.bash.bash build.sh > $PROJECT_NAME/build.sh && chmod u+x $PROJECT_NAME/build.sh
#run_test.bash run_test.sh> $PROJECT_NAME/run_test.sh && chmod u+x $PROJECT_NAME/run_test.sh
.gitignore.bash .gitignore> $PROJECT_NAME/.gitignore

echo "MIT License

Copyright (c) 2018-$CREATED_YEAR Aliben(aliben.develop@gmail.com)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
" >> $PROJECT_NAME/LICENSE

cd $PROJECT_NAME
git init && git add . && git commit -m "Init project"
